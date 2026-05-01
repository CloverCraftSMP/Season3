#!/usr/bin/env bash
set -euo pipefail

# This script gathers modpack metadata, generates diffs, updates the changelog, and provides outputs for GitHub Actions.

echo "🔎 Getting modpack info..."

# Ensure required tools are available
for tool in jq curl java perl grep sed git; do
  command -v "$tool" >/dev/null 2>&1 || { echo "::error::$tool is required but not installed."; exit 1; }
done


# -- VALIDATE FILES --
[[ -f pakku-lock.json ]] || { echo "::error::pakku-lock.json not found."; exit 1; }
[[ -f pakku.json     ]] || { echo "::error::pakku.json not found."; exit 1; }
[[ -f CHANGELOG.md   ]] || { echo "::error::CHANGELOG.md not found."; exit 1; }
echo "✔ pakku-lock.json, pakku.json, CHANGELOG.md"

lockfile=$(cat pakku-lock.json)
configfile=$(cat pakku.json)
 
# -- PROJECT NAME --
projectname=$(jq -r '.name' <<< "$configfile")
echo "projectname=$projectname" >> "$GITHUB_OUTPUT"
echo "📦 projectname=$projectname" | tee -a "$GITHUB_STEP_SUMMARY"

# -- MC VERSION --
# Reads the first entry from mc_versions in the lock file
mcversion=$(jq -r '.mc_versions[0]' <<< "$lockfile")
echo "mcversion=$mcversion" >> "$GITHUB_OUTPUT"
echo "🎮 mcversion=$mcversion" | tee -a "$GITHUB_STEP_SUMMARY"
 
# -- TAGS --
latest_tag=$(git describe --tags --abbrev=0 2>/dev/null || echo "v0.0.0")
echo "tag=$latest_tag" >> "$GITHUB_OUTPUT"
echo "🏷  tag=$latest_tag" | tee -a "$GITHUB_STEP_SUMMARY"
 
# -- PROJECT SUFFIX --
# Tagged releases use the tag; branch builds use the run number
if [[ "${GITHUB_REF}" == refs/tags/v* ]]; then
  projectsuffix="$latest_tag"
else
  projectsuffix="build.${GITHUB_RUN_NUMBER}"
fi
echo "projectsuffix=$projectsuffix" >> "$GITHUB_OUTPUT"
echo "🔖 projectsuffix=$projectsuffix" | tee -a "$GITHUB_STEP_SUMMARY"
 
# -- RELEASE TYPE --
case "$latest_tag" in
  *alpha*) rel_type="alpha" ;;
  *beta*)  rel_type="beta"  ;;
  *)       rel_type="release" ;;
esac
echo "rel_type=$rel_type" >> "$GITHUB_OUTPUT"
echo "📋 rel_type=$rel_type" | tee -a "$GITHUB_STEP_SUMMARY"
 
# -- DIFF --
# Compare the current lock file against the one at the previous tag's commit
latest_tagged_commit=$(git rev-list -n 1 --pretty=format:"%h" "$latest_tag" | sed -n 2p)
if [[ "$latest_tag" == "${GITHUB_REF_NAME}" ]]; then
  prev_tag=$(git describe --tags --abbrev=0 "${latest_tag}^")
  latest_tagged_commit=$(git rev-list -n 1 --pretty=format:"%h" "$prev_tag" | sed -n 2p)
fi
echo "📌 Diffing from commit $latest_tagged_commit"
 
git show "$latest_tagged_commit:./pakku-lock.json" > ./pakku-lock-prev.json
 
# Download Pakku
PAKKU_VERSION=$(curl -sSL https://api.github.com/repos/juraj-hrivnak/Pakku/releases/latest | jq -r .tag_name)
curl -sSL "https://github.com/juraj-hrivnak/Pakku/releases/download/${PAKKU_VERSION}/pakku.jar" -o pakku.jar
 
java -jar ./pakku.jar diff ./pakku-lock-prev.json ./pakku-lock.json -v --markdown PROJECTS_DIFF.md
 
# Write diff to Actions output (multiline safe)
{
  echo 'diff<<EOF'
  cat PROJECTS_DIFF.md
  echo EOF
} >> "$GITHUB_OUTPUT"
 
# -- CHANGELOG --
changelog="./CHANGELOG.md"

# Substitute @version@ with the actual version tag/build number
perl -pi -e "s/\@version\@/${projectsuffix}/g" "$changelog"
 
# Substitute @mod_changes@ with the generated diff
perl -0777 -i -pe 'BEGIN { open F, "PROJECTS_DIFF.md"; undef $/; $d = <F> } s/\@mod_changes\@/$d/s' "$changelog"
 
# Extract @news@ block content and write it to output, then substitute it inline
news=$(grep -Pzo '\@news\@\{\K[\s]\n*([\s\S]*)\n(?=\})' "$changelog" | sed '/^$/d' | sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g')
echo "news=$news" >> "$GITHUB_OUTPUT"
perl -0777 -i -pe "s/\@news\@\{[\s]\n*([\s\S]*)\n\}\n/$news/g" "$changelog"
 
echo "---" >> "$GITHUB_STEP_SUMMARY"
cat "$changelog" >> "$GITHUB_STEP_SUMMARY"
 
# Rename with suffix for artifact upload
mv "$changelog" "CHANGELOG-${projectsuffix}.md"
echo "✔ Changelog written to CHANGELOG-${projectsuffix}.md"