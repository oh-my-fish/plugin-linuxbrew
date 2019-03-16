set -l brew "/home/linuxbrew/.linuxbrew/bin/brew"

if [ -d "$HOME/.linuxbrew" ]
    set brew "$HOME/.linuxbrew/bin/brew"
end

if [ -f "$brew" ]
    eval (eval "$brew" shellenv)
end
