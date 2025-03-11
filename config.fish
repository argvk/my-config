set -g fish_key_bindings fish_vi_key_bindings

set EDITOR vim
set PATH /usr/local/bin $PATH

if test -f /opt/homebrew/bin/brew 
    eval "$(/opt/homebrew/bin/brew shellenv)"
else if test -f /home/linuxbrew/.linuxbrew/bin/brew
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
end

alias cat=bat
direnv hook fish | source

. ~/.config/fish/local.fish
