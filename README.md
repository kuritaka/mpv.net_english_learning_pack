# mpv.net English Learning Pack

## Purpose
This covers the configuration for mpv.net, a video player for Windows.

## Screenshots (mpv english learning pack)
<img src="screenshots/ted.png" width="800">

<img src="screenshots/friends.png" width="800">


## Added Features

- Left click on the video: play / pause
- `Esc`: ignored, so it does not quit mpv.net
- Always-visible bottom status:

```text
00:12:34 / 00:42:10        Speed: 1.0x
```

## Installation

Place `portable_config` next to `mpvnet.exe`.

```text
mpv.net/
├─ mpvnet.exe
└─ portable_config/
   ├─ mpv.conf
   ├─ input.conf
   ├─ scripts/
   │  ├─ english-subs.lua
   │  └─ always-status.lua
   └─ script-opts/
      └─ english-subs.conf
```

No PowerShell command is required.

## Default Layout

- Video 50%
- Subtitle panel 50%
- Previous 2 / current / next 2
- Font size 27
- Current subtitle uses the same font size
- Not bold
- No `▶` marker
- Current subtitle highlighted by color only
- `max_chars=55`

## Controls

| Input | Action |
|---|---|
| Left click | Play / pause |
| Esc | Do nothing |
| Left Arrow | Seek backward 5 seconds |
| Right Arrow | Seek forward 5 seconds |
| Up Arrow | Seek forward 10 seconds |
| Down Arrow | Seek backward 10 seconds |
| Shift + Left / Right | Seek backward / forward 1 second |
| Ctrl + Left | Previous subtitle |
| Ctrl + Right | Next subtitle |
| R | Replay current subtitle |
| S | Toggle subtitle panel |
| `[` / `]` | Speed -0.1 / +0.1 |
| Backspace | Reset speed to 1.0x |

## Always-visible Status

`portable_config/scripts/always-status.lua` renders:

```text
current time / duration        Speed: current speed
```

at the bottom center of the window.
