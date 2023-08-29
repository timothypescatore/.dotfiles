#!/bin/env bash

if command -v apt &>/dev/null; then
	sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove

fi

if command -v cargo; then
	cargo install-update --all
fi

if command -v brew &>/dev/null; then
	brew update && brew upgrade
fi
