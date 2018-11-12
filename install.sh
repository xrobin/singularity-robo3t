#!/bin/bash
set -euo pipefail

prefix=$HOME/.local

bin_dir="$prefix/bin"
robo3t_bin="$bin_dir/robo3t"
icon_dir="$prefix/share/icons"
icon_file="$icon_dir/robo3t-256x256.png"
app_dir="$prefix/share/applications"
desktop_file="$app_dir/robo3t.desktop"

mkdir -p "$bin_dir" "$icon_dir" "$app_dir"

singularity pull --name "robo3t.simg" shub://xrobin/singularity-robo3t
mv robo3t.simg "$robo3t_bin"
curl "https://raw.githubusercontent.com/Studio3T/robomongo/master/src/robomongo/gui/resources/icons/logo-256x256.png" > "$icon_file"

cat << EOF > "$desktop_file"
#!/usr/bin/env xdg-open
[Desktop Entry]
Type=Application
Name=Robo 3T
Exec="$robo3t_bin"
Icon=$icon_file
Categories=Application;
EOF

