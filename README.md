# mpv.net English Learning Pack

## Purpose
This covers the configuration for mpv.net, a video player for Windows.

## Screenshots (mpv english learning pack)
<img src="screenshots/ted.png" width="800">

<img src="screenshots/friends.png" width="800">



## Default Layout

- Video 50%
- Subtitle panel 50%
- Previous 2 / current / next 2
- Current subtitle highlighted by color only
- `max_chars=55`

## Controls

| Input | Action |
|---|---|
| Left click | Play / pause |
| Esc | Exit fullscreen (does nothing when windowed) |
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



## Installation

### Option 1: Download the ready-to-use package

Download the archive from the [Releases page](https://github.com/kuritaka/mpv.net_english_learning_pack/releases), extract it, and run `mpvnet.exe`.

### Option 2: Use a portable mpv.net download

1. Download and extract a **portable** build of [mpv.net](https://github.com/mpvnet-player/mpv.net/releases).
2. Copy this repository's `portable_config` directory next to `mpvnet.exe`.

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


### Option 3: Install with winget

Install mpv.net:

```powershell
winget install --id mpv.net --exact
```

Then copy the contents of this repository's `portable_config` directory to `%APPDATA%\mpv.net` (normally `C:\Users\<username>\AppData\Roaming\mpv.net`).

mpv.net searches `portable_config` beside `mpvnet.exe` before `%APPDATA%\mpv.net`; do not use both locations for this pack at the same time.

## Video and Subtitle Files

Place the video and its external subtitle file in the same directory. With the default `sub-auto=fuzzy` setting, a matching `.srt` subtitle is loaded automatically; for example:

```text
lesson.mp4
lesson.en.srt
```
