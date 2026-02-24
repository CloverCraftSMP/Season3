# CloverCraft SMP Season 3

**Version:** 1.21.1

**[Fabric Loader](https://fabricmc.net/develop/):** 0.18.4

**[Target](https://juraj-hrivnak.github.io/Pakku/exporting-a-modpack.html):** Modrinth, CurseForge, and Server pack 

## Setup

0. **Symlink or clone github repo into prism instances folder**

    ```bash
    # symlink (linux example)
    ln -s /home/syfe/projects/personal/Season3 /home/syfe/.local/share/PrismLauncher/instances/CCSMP3/minecraft
    ```

1. **Install Dependencies ([pakku](https://juraj-hrivnak.github.io/Pakku/installing-pakku.html) for pack management, CLI tool)**

    ```bash
    # windows
    scoop install https://juraj-hrivnak.github.io/Pakku/install/pakku.json
    ```

2. **Configure CurseForge API key ([setup docs](https://juraj-hrivnak.github.io/Pakku/setting-up-a-modpack.html#configuring-curseforge-access))**
    ```
    pakku credentials set --cf-api-key '<key>'
    ```