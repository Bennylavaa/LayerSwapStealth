<p align="center">
  <img src="Media/icon.png" alt="LayerSwap Stealth icon" width="128">
</p>

<h1 align="center">LayerSwap Stealth</h1>

<p align="center">
  <b>Log in stealthed.</b> A small add-on for <b>LayerSwap</b> that turns Host off every time you log in, and stops LayerSwap from keeping Host on after a swap.
</p>

---

## Why

LayerSwap is built to turn **Host** back on at every login, even if you switched it off last session. It also keeps Host on for **4 minutes after each swap** and won't let you turn it off until that time is up. If you don't want to be inviting strangers into your group, LayerSwap Stealth keeps you out of the host pool.

## What it does

### Host off at login

- When you log in, it waits about 2 seconds for LayerSwap to finish loading, then turns Host off with LayerSwap's own `/ls off` command.
- A `/reload` doesn't trigger it. LayerSwap already keeps your Host setting across reloads.
- You can still turn Host on whenever you like, with the panel button, the minimap menu or `/ls on`. It stays on until your next login.

### No forced Host after a swap

- After a swap that worked, LayerSwap keeps Host on for 4 minutes. LayerSwap Stealth removes that hold the moment it starts.
- **If Host was off when you asked to swap:** LayerSwap turns it off again by itself a few seconds after you leave the host's group, without waiting 4 minutes.
- **If Host was on:** it stays on, but you can turn it off right away.
- While your own swap request is running, LayerSwap still shows Host as on. Another add-on can't change that, and it ends when the swap does. LayerSwap doesn't invite anyone while your own request is waiting or while you're in someone else's group, so you won't host anyone during a swap.

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

- **LayerSwap** is made by Adam5288. This add-on only uses LayerSwap's `/ls off` command and clears its after-swap Host timer. It doesn't include any of LayerSwap's code.
- **LayerSwap Stealth** is made by [Bennylavaa](https://github.com/Bennylavaa).

## License

[MIT](LICENSE)
