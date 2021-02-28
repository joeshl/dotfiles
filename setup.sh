#!/bin/sh
defaults write com.microsoft.VSCode CGFontRenderingFontSmoothingDisabled 0
defaults write com.microsoft.VSCode.helper CGFontRenderingFontSmoothingDisabled 0
defaults write com.microsoft.VSCode.helper.EH CGFontRenderingFontSmoothingDisabled 0
defaults write com.microsoft.VSCode.helper.NP CGFontRenderingFontSmoothingDisabled 0

ln -s ~/Projects/dotfiles/vscode/snippets ~/Library/Application Support/Code/User/snippets
ln -s ~/Projects/dotfiles/vscode/keybindings.json ~/Library/Application Support/Code/User/keybindings.json
ln -s ~/Projects/dotfiles/vscode/settings.json ~/Library/Application Support/Code/User/settings.json
