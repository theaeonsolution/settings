# Automatically sets up and installs as much as possible.
# Make sure to run this from the directory containing it.

echo "Symlinking .bash_profile..."
ln -fs $PWD/dotfiles/.bash_profile ~/.bash_profile

echo "Symlinking .gitignore_global..."
ln -fs $PWD/dotfiles/.gitignore_global ~/.gitignore_global

# Run the new .bash_profile.
source ~/.bash_profile

echo "Enter name, press [ENTER] to continue:"
read NAME

echo "Enter email, press [ENTER] to continue:"
read EMAIL

# Setup Git
git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global push.default simple
git config --global pull.ff only
git config --global core.autocrlf input
git config --global core.editor vim
git config --global diff.tool vimdiff
git config --global mergetool.prompt true
git config --global merge.tool vimdiff
git config --global merge.conflictstyle diff3
