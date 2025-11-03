#!/usr/bin/env bash

wallpaper_path=$HOME/Pictures/wallpapers
wallpaper_folder=$HOME/Pictures/wallpapers/wallpapers
wallpaper_name="$(ls $wallpaper_folder | rofi -dmenu || pkill rofi)"

if [[ -f $wallpaper_folder/$wallpaper_name ]]; then
    ln -sf "$wallpaper_folder/$wallpaper_name" "$wallpaper_path/wallpaper"
    set-wall "$wallpaper_path/wallpaper"
else
    exit 1
fi
