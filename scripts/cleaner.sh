#!/bin/bash

echo ""
echo "[CLEANING] Packages Cache"
yes | sudo pacman -Scc
echo ""

echo ""
echo "[CLEANING] Orphaned Packages"
yes | sudo pacman -Rns $(pacman -Qtdq)
echo ""

echo ""
echo "[CLEANING] Logs"
yes | sudo journalctl --vacuum-time=3d
echo ""

echo ""
echo "[CLEANING] Fonts"
mkdir -p ~/.local/share/fonts
fc-cache -f -v
echo ""
