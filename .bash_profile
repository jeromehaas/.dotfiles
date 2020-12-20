# Simplified dotfile for video recordings

# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

echo "Hello";

#Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

if [ -f ~/.config/bash/.bashrc ]; then
   source ~/.config/bash/.bashrc
fi

export BASH_SILENCE_DEPRECATION_WARNING=1


