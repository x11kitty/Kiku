# 💎 KIKU: Ultimate Hi-Res Engine
> **Minimalist CLI Music Player for Audiophiles**

[![Shell: Bash](https://img.shields.io/badge/Shell-Bash-4EAA25.svg?logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Engine: MPV](https://img.shields.io/badge/Engine-MPV-black.svg?logo=mpv&logoColor=white)](https://mpv.io/)
[![Hi-Res: 192kHz](https://img.shields.io/badge/Hi--Res-192kHz%2F32--bit-blueviolet.svg)](#-audio-pipeline)

Kiku is a high-performance terminal music player engineered to bypass standard OS audio limitations. It delivers a bit-perfect, **192kHz/32-bit** studio-grade listening experience by utilizing a professional-grade mastering pipeline directly in your CLI.

---

## ⚡ Audio Pipeline (Studio Grade)
The engine is pre-configured with a professional-grade signal chain:

* **Bit-Perfect Delivery**: Utilizes `--audio-exclusive=yes` to bypass system mixers and prevent signal degradation.
* **High-End Resampling**: Implements the `soxr` (SoX) resampler with **28-bit precision**.
* **Psychoacoustic Dithering**: Uses the **Shibata** noise-shaping method for maximum transparency and silent backgrounds.
* **Hi-Res Ceiling**: Hard-coded to **192,000Hz** and **32-bit signed (s32)** output to match premium DAC capabilities.

---

## 🕹️ Controls (Hardware API)
Kiku features customized, hardware-level control mapping for rapid navigation:

| Key | Action | Function |
| :--- | :--- | :--- |
| `SPACE` | **Play / Pause** | Toggle playback state |
| `UP` | **Next Track** | Skip to next entry in `play.txt` |
| `DOWN` | **Previous Track** | Return to the previous track |
| `RIGHT` | **Forward 10s** | Rapid seek forward |
| `LEFT` | **Rewind 10s** | Rapid seek backward |
| `Q` | **Exit Engine** | Safely kill the audio pipeline |

---

## 🚀 Installation & Deployment

### 1. Install Dependencies
Kiku is compatible with every major Linux distribution. Use the command for your system:

**Arch Linux (Pacman)**
```bash
sudo pacman -S mpv libsoxr yt-dlp
```

**UBUNTU/DEBIAN/KALI-(APT)**
```bash
sudo apt update && sudo apt install mpv libsoxr-dev yt-dlp
```

**FEDORA/RHEL/CENTOS-(DNF)**
```bash
sudo dnf install mpv libsoxr yt-dlp
```
