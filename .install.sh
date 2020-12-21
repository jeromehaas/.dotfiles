#!/usr/bin/env bash
############################
# SETUP DOTfILES
# INSTALLS MAIN PROGRAMS 
############################

# GIVE ONE PARAMETER (HOMEDIR) TO EXECUTE SCRIPT
if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi
homedir=$1

# DEFINE DIRECOTY FOR DOTFILES
dotfiledir=${homedir}/dotfiles

# LIST ALL FILES TO MAKE A SYMLINK FOR
files="aliases bash_profile bash_prompt bashrc gitconfig gitignore viminfo vimrc zsh_history zshrc vim viminfo CFUserTextEncoding git-completion.bash vscode viminfo oh-my-zsh ssh"

# SWITCH TO DOTFILES DIRECTORY
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# CREATE FOR EACH FILES OR DIRECTORY A SYMLINK
# WARNING: THIS WILL OVERWRITE YOUR OLD FILES
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done

# INSTALL GIT AUTO COMPLETION
curl "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash" > ${homedir}/.git-completion.bash

# OUTCOMMENT THE SCRIPT BELOW TO EXECUTE SCRIPT TO 
# INSTALL SOME MAIN APPLICATIONS
# ./.brew.sh

