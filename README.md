<p align="center">
  <img src="Media/icon.png" alt="LayerSwap Stealth icon" width="128">
</p>

<h1 align="center">LayerSwap Stealth</h1>

<p align="center">
  <b>Log in stealthed.</b> A small add-on for <b>LayerSwap</b> that keeps Host off across logins unless you turn it on yourself.
</p>

---

## Why

LayerSwap is built to turn **Host** back on at every login, even if you switched it off last session. If you don't want to be inviting strangers into your group, LayerSwap Stealth keeps you out of the host pool.

## What it does

- **First load:** the first time it loads on a character, it turns Host off right away, even after just a `/reload`.
- **Logged out with Host off:** about 2 seconds after your next login, it turns Host off again with LayerSwap's own `/ls off` command.
- **Logged out with Host on:** it leaves Host on. If you turn Host on with the panel button, the minimap menu or `/ls on`, it stays on until you turn it off.
- **`/reload`:** nothing changes. LayerSwap already keeps your Host setting across reloads.
- The setting is saved separately for each character.

LayerSwap's other features still work: swapping layers, seeing which layer you're on, the panel and the mini bar.

## Requirements

- **LayerSwap**, installed and enabled
- WoW Classic Era / Season of Discovery, Classic Anniversary (Forever) or TBC Anniversary. It runs on the same game versions as LayerSwap.

## Installation

1. Download **`LayerSwapStealth-x.x.zip`** from the latest [**release**](https://github.com/Bennylavaa/LayerSwapStealth/releases/latest).
2. Extract it into your AddOns folder, for example:
   ```
   World of Warcraft\_classic_era_\Interface\AddOns\
   ```
3. Restart the game and enable **LayerSwap Stealth** in the AddOns list on the character select screen.

> If you use **Code → Download ZIP** instead, the folder extracts as `LayerSwapStealth-main` and contains repo files. Rename the folder to **`LayerSwapStealth`** or the game won't load it. The release zip doesn't have this problem.

The folder should end up like this:

```
Interface\AddOns\LayerSwapStealth\
├── LayerSwapStealth.toc
├── LayerSwapStealth.lua
└── Media\
    ├── icon.png
    └── logo.tga
```

## When you log in

Because it uses LayerSwap's own command, LayerSwap prints its normal status line in chat when Host goes off, like this:

```
LayerSwap: you are on layer ... Hosting is OFF ...
```

That line means it worked.

## Credits

- **LayerSwap** is made by Adam5288. This add-on only uses LayerSwap's `/ls off` command and reads its Host setting. It doesn't include any of LayerSwap's code.
- **LayerSwap Stealth** is made by [Bennylavaa](https://github.com/Bennylavaa).

## License

[MIT](LICENSE)
