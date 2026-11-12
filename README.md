<p align="center">
  <img src="Media/icon.png" alt="LayerSwap Stealth icon" width="128">
</p>

<h1 align="center">LayerSwap Stealth</h1>

<p align="center">
  <b>Log in stealthed.</b> A small add-on for <b>LayerSwap</b> that turns Host off every time you log in.
</p>

---

## Why

LayerSwap is built to turn **Host** back on at every login, even if you switched it off last session. If you don't want to be inviting strangers into your group the moment you log in, LayerSwap Stealth keeps you out of the host pool.

## What it does

- When you log in, it waits about 2 seconds for LayerSwap to finish loading, then turns Host off with LayerSwap's own `/ls off` command.
- A `/reload` doesn't trigger it. LayerSwap already keeps your Host setting across reloads.
- You can still turn Host on whenever you like, with the panel button, the minimap menu or `/ls on`. It stays on until your next login.
- LayerSwap's other features still work: swapping layers, seeing which layer you're on, the panel and the mini bar.

## Requirements

- **LayerSwap**, installed and enabled
- WoW Classic Era / Season of Discovery, Classic Anniversary (Forever) or TBC Anniversary. It runs on the same game versions as LayerSwap.

## Installation

1. Download the latest version from [**Releases**](https://github.com/Bennylavaa/LayerSwapStealth/releases), or use **Code → Download ZIP**.
2. Extract it into your AddOns folder, for example:
   ```
   World of Warcraft\_classic_era_\Interface\AddOns\
   ```
3. Make sure the folder is called exactly **`LayerSwapStealth`**. A GitHub ZIP extracts as `LayerSwapStealth-main`, so rename it.
4. Restart the game and enable **LayerSwap Stealth** in the AddOns list on the character select screen.

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

- **LayerSwap** is made by Adam5288. This add-on only changes one of LayerSwap's settings and doesn't include any of its code.
- **LayerSwap Stealth** is made by [Bennylavaa](https://github.com/Bennylavaa).

## License

[MIT](LICENSE)
