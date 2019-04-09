#!/bin/bash

sug_uri="https://raw.githubusercontent.com/heineiuo/sug/master/sug.sh"
bin_dir="/usr/local/bin"
exe="$bin_dir/sug"

curl -fL# -o "$exe" "$sug_uri"
chmod +x "$exe"

echo "Sug was installed successfully to $exe"