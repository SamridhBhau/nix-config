#!/usr/bin/env bash

if ! pgrep -x swww-daemon >/dev/null; then
    awww-daemon --no-cache &

    # Wait until the daemon is ready
    while ! awww query >/dev/null 2>&1; do
        sleep 0.1
    done
fi

awww img -t none ~/Pictures/wallpapers/wallpaper &
