#!/bin/bash

# Configuration
PLAYLIST="play.txt"

if [[ ! -f "$PLAYLIST" ]]; then
    echo -e "\e[31mError: play.txt not found!\e[0m"
    exit 1
fi

# UI Setup
clear
echo -e "\e[1;35m=================================================\e[0m"
echo -e "\e[1;37m    💎 ULTIMATE HI-RES KIKU MPP | STUDIO GRADE\e[0m"
echo -e "\e[1;35m=================================================\e[0m"
echo -e "\e[0;90m  [↑/↓] Track  [←/→] ±10s  [Space] Play/Pause  [Q] Exit\e[0m"
echo -e "\e[1;35m-------------------------------------------------\e[0m"

# MASTERING-GRADE AUDIO PIPELINE:
# 1. --audio-exclusive=yes: Bypasses OS mixer for bit-perfect delivery.
# 2. --audio-samplerate=192000: Apple Music Hi-Res ceiling.
# 3. --audio-swresample-o:
#    - resampler=soxr: The world-standard for clean upsampling.
#    - precision=28: Ultra-high math precision.
#    - dither_method=shibata: Psychoacoustic noise shaping for silent backgrounds.
# 4. --audio-wait-open=5: Pre-rolls the buffer to prevent "pops" at start.

mpv --no-video \
    --playlist="$PLAYLIST" \
    --ytdl-format="bestaudio/best" \
    --audio-exclusive=yes \
    --audio-format=s32 \
    --audio-samplerate=192000 \
    --audio-swresample-o=resampler=soxr,precision=28,cheby=yes,dither_method=shibata \
    --gapless-audio=yes \
    --audio-buffer=1.0 \
    --replaygain=no \
    --volume=100 \
    --initial-audio-sync=yes \
    --term-osd-bar \
    --term-status-msg="\e[1;32m ⚡ MASTERING \e[0m | \${media-title} | \e[1;33m\${time-pos} / \${duration}\e[0m | \e[1;36m192kHz/32-bit\e[0m" \
    --input-conf=<(printf "UP playlist-next\nDOWN playlist-prev\nRIGHT seek 10\nLEFT seek -10\nSPACE cycle pause\nq quit")
