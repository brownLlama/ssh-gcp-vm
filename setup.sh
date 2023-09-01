# Installing autosuggestions and syntax highlight for zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "plugins=(zsh-autosuggestions zsh-syntax-highlighting)" >>~/.zshrc
echo "source $ZSH/oh-my-zsh.sh" >>~/.zshrc

# Installing Homebrew -> rip and exa
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(
    echo
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'
) >>/home/sanu_maharjan/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install rm-improved exa lazygit

# Alias
echo "alias c=clear" >>~/.zshrc
echo "alias rm=rip" >>~/.zshrc
echo "alias lg="lazygit"" >>~/.zshrc
echo "alias ls='exa --group-directories-first --icons'" >>~/.zshrc
echo "alias l='exa -l -a --group-directories-first --icons'" >>~/.zshrc
. ~/.zshrc
