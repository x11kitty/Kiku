# 💎 KIKU: Ultimate Hi-Res Engine

**Kiku** is a high-fidelity, minimalist CLI music player for Arch Linux. Designed for audiophiles, it bypasses standard OS limitations to provide a bit-perfect, **192kHz/32-bit** studio-grade listening experience.

---

## ✨ Key Features
* **Bit-Perfect Audio**: Uses `--audio-exclusive` mode to bypass the system mixer, ensuring an untainted signal path directly to your DAC.
* **Studio Resampling**: Implements the `soxr` (SoX) resampler with 28-bit precision—the gold standard for clean upsampling.
* **Advanced Dithering**: Utilizes the **Shibata** psychoacoustic noise shaping method for high-end transparency.
* **YouTube Integration**: Native support for streaming the highest quality audio directly from YouTube via `yt-dlp`.
* **Gapless Playback**: Pre-rolled 1.0s buffers ensure seamless transitions between tracks without "pops" or clicks.

---

## 🛠 Installation

### 1. System Dependencies
Kiku requires the following packages on Arch Linux:
```bash
sudo pacman -S mpv libsoxr yt-dlp
