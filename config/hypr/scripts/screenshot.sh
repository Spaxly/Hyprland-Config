#!/bin/fish

grim -g $(slurp) $(xdg-user-dir PICTURES)/$(date +'%s_grim.png')
