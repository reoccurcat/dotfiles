echo "Installing:"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k --quiet
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions --quiet
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting --quiet
rm -r .zshrc
wget --quiet -O $HOME/.zshrc "https://github.com/reoccurcat/dotfiles/raw/main/.zshrc"
wget --quiet -O $HOME/.p10k.zsh "https://github.com/reoccurcat/dotfiles/raw/main/.p10k.zsh"
echo "All done, restart your terminal session"
