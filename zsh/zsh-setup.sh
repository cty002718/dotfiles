#!/bin/bash

# Check if Oh My Zsh is installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo -e "\033[0;33mOh My Zsh is not installed.\033[0m"
    echo -e "Please manually execute the following command to install Oh My Zsh"
    echo "sh -c \"\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\""
    echo "After installation, please rerun this script."
    exit 1
fi

# Set ZSH_CUSTOM variable
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}

# Check and install Powerlevel10k theme
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
else
    echo "Powerlevel10k theme already installed."
fi

# Check and install zsh-autosuggestions plugin
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
else
    echo "zsh-autosuggestions plugin already installed."
fi

# Check and install zsh-syntax-highlighting plugin
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
else
    echo "zsh-syntax-highlighting plugin already installed."
fi

# Create symlinks for configuration files
script_dir=$(realpath $(dirname "$0"))
ln -sfn "$script_dir/.zshrc" ~/.zshrc
ln -sfn "$script_dir/.p10k.zsh" ~/.p10k.zsh

echo -e "\033[0;32mSetup complete. Please restart your terminal or run 'source ~/.zshrc' to apply changes.\033[0m"

# Next steps for MacBook users
echo -e "\033[0;33mNext Steps for MacBook users:\033[0m"
echo "1. Install a Nerd Font for proper icon display."
echo "   a. Use Homebrew to tap the fonts repository:"
echo "      brew tap homebrew/cask-fonts"
echo "   b. Install a Nerd Font, e.g., Hack Nerd font:"
echo "      brew install --cask font-hack-nerd-font"
echo "2. Configure your terminal to use the newly installed font."
echo "   - Open terminal preferences and set the font to 'hack-nerd-font'."
echo "   - Ensure that 'Use a different font for non-ASCII text' is checked."
echo "3. Restart your terminal or open a new instance to apply the changes."
