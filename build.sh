#!/usr/bin/env bash

work_dir="tmp"
out_dir="iso"
profile_dir="src"

# Remove Dirs
rm -rf $work_dir
rm -rf $out_dir

# Make Iso
mkarchiso -v -w $work_dir -o $out_dir $profile_dir


