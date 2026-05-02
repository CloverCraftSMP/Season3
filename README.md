<div align="center">
<h1>CloverCraft SMP</h1>

**Season 3**

[![Minecraft](https://img.shields.io/badge/Minecraft-1.21.1-62b47a?style=for-the-badge&logo=minecraft&logoColor=white)](https://minecraft.net)
[![Fabric](https://img.shields.io/badge/Fabric_Loader-0.19.2-dbb98a?style=for-the-badge)](https://fabricmc.net/develop/)
[![Targets](https://img.shields.io/badge/Targets-Modrinth_%7C_Server-4a9eff?style=for-the-badge)](https://juraj-hrivnak.github.io/Pakku/exporting-a-modpack.html)
[![Modrinth](https://img.shields.io/modrinth/dt/Ds1KOhlV?style=for-the-badge&logo=modrinth&color=62b47a&label=Downloads)](https://modrinth.com/modpack/clovercraftsmp-season-3)
[![GitHub Releases](https://img.shields.io/github/v/release/CloverCraftSMP/CloverCraft-SMP?style=for-the-badge&logo=github&color=333&label=Releases)](https://github.com/CloverCraftSMP/CloverCraft-SMP/releases)
</div>

Polished modpack, quality performance enhancements and stellar immersion; designed for our community. We've hand-picked a collection of mods that enhance vanilla gameplay.

## ✨ What's inside?

- **Quality Performance:** An intentionally light modpack for achieving high performance without compromise.
- **Expanded Horizons:** Take in a world like never before, from the little touches to the wider valleys. An experience like never before
- **Quality of Life Galore:** Enjoy countless small improvements that make gameplay more intuitive, from inventory management and recipe viewing with EMI to improved map tools and UI enhancements.
- **More to Build & Do:** Expand your creative potential with new building blocks from Supplementaries, new foods and farming mechanics with Farmer's Delight, and new decorative options.
- **Built for Security:** Utilising Pakku as our modpack management tool, git version control, and auto-generated changelogs with publishing.


## Dev Setup

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

<details>
<summary>💖 Credits</summary>

This modpack wouldn't exist without the hard work of many talented creators. We'd like to extend our deepest gratitude to them!

**All Mod Authors:** A massive thank you to every single developer whose mod is featured in this pack. Your creativity is the foundation of this entire project. Please support them on Modrinth and CurseForge!

**Community & Friends:** Thank you to everyone who supported us on [Ko-Fi](https://ko-fi.com/clovercraftteam), helped test the pack and give feedback!


**Off-platform mods:**
- [Chimes](https://www.curseforge.com/minecraft/mc-mods/chimes)

</details>

<div align="center">

---

*Made with 🍀 for our amazing community by the CloverCraft Team*

---
 
</div>