# mpv.net 英語学習用セット


## 目的
Windowsの動画再生プレイヤーmpv.netの設定です。


## スクリーンショット(mpv english learning pack)
<img src="screenshots/ted.png" width="800">

<img src="screenshots/friends.png" width="800">



## 追加した機能

- 画面左クリックで再生 / 一時停止
- `Esc` を押しても終了しない
- 画面下に常時以下を表示

```text
00:12:34 / 00:42:10        Speed: 1.0x
```

## 配置

`portable_config` を `mpvnet.exe` と同じ場所へ置きます。

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

PowerShellの実行は不要です。

## 初期レイアウト

- 動画 50%
- 字幕 50%
- 前2 / 現在 / 次2
- 字幕サイズ 27
- 現在字幕も同じサイズ
- 太字なし
- `▶` なし
- 現在字幕は色のみでハイライト
- `max_chars=55`

## キー / マウス操作

| 操作 | 動作 |
|---|---|
| 左クリック | 再生 / 一時停止 |
| Esc | 何もしない |
| ← | 5秒戻る |
| → | 5秒進む |
| ↑ | 10秒進む |
| ↓ | 10秒戻る |
| Shift + ← / → | 1秒戻る / 進む |
| Ctrl + ← | 前の字幕 |
| Ctrl + → | 次の字幕 |
| R | 現在字幕を先頭から再生 |
| S | 字幕パネル ON/OFF |
| `[` / `]` | 再生速度 -0.1 / +0.1 |
| Backspace | 速度を1.0xへ戻す |

## 常時ステータス表示

`portable_config/scripts/always-status.lua` が、

```text
現在時間 / 総時間        Speed: 現在速度
```

を画面最下部中央に表示します。

例:

```text
00:12:34 / 00:42:10        Speed: 1.0x
```
