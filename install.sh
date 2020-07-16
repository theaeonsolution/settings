# Automatically sets up and installs as much as possible.
# Make sure to run this from the directory containing it.

echo "Symlinking .bash_profile..."
ln -fs $PWD/dotfiles/.bash_profile ~/.bash_profile

echo "Symlinking .gitignore_global..."
ln -fs $PWD/dotfiles/.gitignore_global ~/.gitignore_global

# Run the new .bash_profile.
source ~/.bash_profile
