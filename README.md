# CloverCraft SMP Season 3

**Version:** 1.21.1

**[Fabric Loader](https://fabricmc.net/develop/):** 0.18.4

**[Target](https://juraj-hrivnak.github.io/Pakku/exporting-a-modpack.html):** Modrinth, CurseForge, and Server pack 

## Setup

0. **Symlink or clone github repo into Prism instances folder**

    ```bash
    # Linux
    ln -s /path/to/your/repo /path/to/PrismLauncher/instances/<InstanceName>/minecraft
    ```
    ```cmd
    :: Windows (Run Command Prompt as Administrator)
    mklink /D "C:\path\to\PrismLauncher\instances\<InstanceName>\minecraft" "C:\path\to\your\repo"
    ```

1. **Copy Prism instance configs** (Run from the Prism instance root)

    ```bash
    # Linux
    cp minecraft/.pakku/prism-overrides/* ./
    ```
    ```cmd
    :: Windows
    xcopy "minecraft\.pakku\prism-overrides\*" ".\" /Y
    ```

2. **Install Dependencies ([pakku](https://juraj-hrivnak.github.io/Pakku/installing-pakku.html) for pack management, CLI tool)**

    ```cmd
    :: Windows
    scoop install https://juraj-hrivnak.github.io/Pakku/install/pakku.json

    # Linux
    # See Pakku docs for installation via Homebrew, AUR, or manual binary download.
    ```

3. **Configure CurseForge API key ([setup docs](https://juraj-hrivnak.github.io/Pakku/setting-up-a-modpack.html#configuring-curseforge-access))** *- optional*
    ```
    pakku credentials set --cf-api-key '<key>'
    ```

## Extras

### Sync modloader version in addition to mods
To automatically keep the Fabric loader version synced, add the appropriate command to your instance settings in Prism Launcher under **Custom Commands -> Pre-launch**:

```cmd
:: Windows
cmd /c "java -jar pakku.jar fetch && copy /Y "$INST_MC_DIR\.pakku\prism-overrides\mmc-pack.json" "$INST_DIR\mmc-pack.json"
```
```bash
# Linux
java -jar pakku.jar fetch && cp -f "$INST_MC_DIR/.pakku/prism-overrides/mmc-pack.json" "$INST_DIR/mmc-pack.json"
```