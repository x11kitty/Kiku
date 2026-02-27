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

**Setup**
```bash
#Run 
git clone https://github.com/x11kitty/Kiku.git
&& cd kiku &&
chmod +x kiku.sh
./kiku.sh
```

<div style="background-color: #f3f0ff; border-left: 5px solid #9f7aea; color: #2d3748; padding: 1.25rem; margin: 2rem 0; border-radius: 4px; font-family: sans-serif;">
<div style="display: flex; align-items: center; margin-bottom: 0.5rem;">
<span style="font-size: 1.2rem; margin-right: 0.75rem;">⚠️</span>
<strong style="text-transform: uppercase; letter-spacing: 0.05em; color: #6b46c1;">Exclusive Mode Active</strong>
</div>
<p style="margin: 0; line-height: 1.6; font-size: 0.95rem;">
While the engine is running, it takes direct control of your audio hardware.
Other applications (such as browser audio or system notifications) will be muted until you exit the player.
</p>
<p>
  The kiku.sh and play.txt Must be In Same Folder and also You can Add You Favourite Music From Youtube
  Copy The Link Of Music Video And Add To play.txt in New Line
</p>
</div>

<footer style="text-align: center; padding: 2rem 0; border-top: 1px solid #edf2f7; margin-top: 3rem; font-family: sans-serif;">
<p style="color: #718096; font-size: 0.9rem; letter-spacing: 0.02em;">
Created with <span style="color: #9f7aea;">💜</span> for the
<span style="font-weight: 600; color: #4a5568;">Audiophile Community</span>.
</p>
</footer>
