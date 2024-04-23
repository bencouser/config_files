# Colours
autoload -U colors && colors
PS1="%{$fg[green]%}[%{$reset_color%} %{$fg[red]%}%1~%{$reset_color%} %{$fg[green]%}]%{$reset_color%}$%b "
setopt autocd
setopt interactive_comments

# Back to Documents Shortcut
alias doc="cd ~/Documents"

# The n is too much
alias vim="nvim"
alias vi="nvim"

# fzf alias
alias f="fzf"
alias sf="fzf | xargs -r nvim"
cdf() {
    local file=$(fzf)
    if [ -n "$file" ]; then
        cd $(dirname $file) || return
    fi
}

# Copilot CLI alias
alias ghcs="gh copilot suggest"
alias ghce="gh copilot explain"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/bencouser/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/bencouser/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/bencouser/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/bencouser/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export MODULAR_HOME="/Users/bencouser/.modular"
export PATH="/Users/bencouser/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

cd ~/Documents

# Set up tmux
tmux
clear

echo "         ______________"
echo "        /             /|"
echo "       /             / |"
echo "      /____________ /  |"
echo "     | ___________ |   |"
echo "     ||           ||   |"
echo "     ||  Hello,   ||   |"
echo "     ||  Ben!     ||   |"
echo "     ||___________||   |"
echo "     |   _______   |  /"
echo "    /|  (_______)  | /"
echo "   ( |_____________|/"
echo "    "
echo ".=======================."
echo "| ::::::::::::::::  ::: |"
echo "| ::::::::::::::[]  ::: |"
echo "|   -----------     ::: |"
echo "'-----------------------'"
