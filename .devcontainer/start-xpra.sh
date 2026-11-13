#!/bin/bash
TUNING="--min-quality=70 --quality=50 --auto-refresh-delay=0.4"
xpra stop :100 >/dev/null 2>&1 || true
xpra start :100 \
  --bind-tcp=0.0.0.0:10000 --html=on \
  --xvfb="Xvfb +extension Composite -screen 0 1024x576x24+32 -nolisten tcp -noreset" \
  --start=firefox-esr --start=pcmanfm \
  --pulseaudio=no --notifications=no --mdns=no \
  $TUNING
