<div align="center">
<h1>CloverCraft SMP</h1>

**Season 3**

![Minecraft](https://img.shields.io/badge/Minecraft-1.21.1-62b47a?style=for-the-badge&logo=minecraft&logoColor=white)
![Fabric](https://img.shields.io/badge/Fabric_Loader-0.19.2-dbb98a?style=for-the-badge)
![Targets](https://img.shields.io/badge/Targets-Modrinth_%7C_Server-4a9eff?style=for-the-badge)
![Modrinth](https://img.shields.io/modrinth/dt/Ds1KOhlV?style=for-the-badge&logo=modrinth&color=62b47a&label=Downloads)
</div>

---

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

<div align="center">

---
 
Made with 🍀 for [CloverCraft SMP](https://modrinth.com/modpack/clovercraftsmp-season-3) · Season 3
 
---
 
</div>