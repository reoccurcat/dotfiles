sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
rm -r $HOME/.zshrc
cp ./zshrc $HOME/.zshrc 
cp ./p10k.zsh $HOME/.p10k.zsh 
mkdir ~/.fonts/cat_dotfiles_fonts
wget 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf' -O ~/.fonts/cat_dotfiles_fonts/MesloLGS_NF_Regular.ttf
wget 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf' -O ~/.fonts/cat_dotfiles_fonts/MesloLGS_NF_Bold.ttf
wget 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf' -O ~/.fonts/cat_dotfiles_fonts/MesloLGS_NF_Italic.ttf
wget 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf' -O ~/.fonts/cat_dotfiles_fonts/MesloLGS_NF_Bold_Italic.ttf
sudo font-cache -f
cp reoccurcat.profile $HOME/.local/share/konsole/reoccurcat.profile
cp amoled.colors $HOME/.local/share/color-schemes/Amoled.colors
echo "Finished installing dotfiles!"
