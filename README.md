# 💎 KIKU: Ultimate Hi-Res Engine

**Kiku** is a high-performance, minimalist CLI music player for Arch Linux. It is engineered to bypass standard OS audio limitations, delivering a bit-perfect, **192kHz/32-bit** studio-grade listening experience directly from your terminal.

---

## ✨ Studio-Grade Audio Pipeline
The engine is pre-configured with a professional mastering chain:
* **Bit-Perfect Delivery**: Uses `--audio-exclusive=yes` to bypass the OS mixer and prevent signal degradation.
* **High-End Resampling**: Implements the `soxr` (SoX) resampler with **28-bit precision** for industry-standard upsampling.
* **Psychoacoustic Dithering**: Uses the **Shibata** noise-shaping method to maintain a silent background and high transparency.
* **Hi-Res Ceiling**: Hard-coded to **192,000Hz** and **32-bit signed (s32)** output to match premium DAC capabilities.

---

## 🕹️ Input API & Controls
Kiku features a clean, hardware-level control mapping for rapid navigation:

| Key | Action | Function |
| :--- | :--- | :--- |
| `SPACE` | **Play / Pause** | Toggle playback state |
| `UP` | **Next Track** | Skip to the next link in `play.txt` |
| `DOWN` | **Previous Track** | Return to the previous track |
| `RIGHT` | **Forward 10s** | Rapid seek forward |
| `LEFT` | **Rewind 10s** | Rapid seek backward |
| `Q` | **Exit Engine** | Safely kill the audio pipeline |

---

## 🚀 Getting Started

### 1. Install Dependencies (Arch Linux)
Ensure your system has the necessary audio libraries and streaming handlers:
```bash
sudo pacman -S mpv libsoxr yt-dlp
