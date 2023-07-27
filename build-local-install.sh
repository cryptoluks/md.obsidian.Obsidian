#!/usr/bin/env bash
flatpak remote-add --no-gpg-verify --if-not-exists localhost localhost
flatpak-builder --repo=localhost build md.obsidian.Obsidian.yml --force-clean
flatpak install localhost md.obsidian.Obsidian
flatpak update md.obsidian.Obsidian