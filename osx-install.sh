set -e  # fail on error
set -u # do not allow unset variables

echo "Installing apps for osx"
sudo chown -R $(whoami) /usr/local/lib/pkgconfig

echo "\n\n\n\n\n----------------------Installing apps-------------------\n\n\n\n\n"
sh $HOME/.dotfiles/osx/install-apps.sh

echo "\n\n\n\n\n----------------------Running scripts-------------------\n\n\n\n\n"
echo "Scripts path $HOME/.dotfiles/scripts-install"
bash $HOME/.dotfiles/scripts-install.sh

echo "Configuring machine as 'squall'"
sh $HOME/.dotfiles/osx/configure-osx.sh squall

echo "\n\n\n\n\n----------------------Setup-------------------\n\n\n\n\n"
sh $HOME/.dotfiles/setup.sh

ln -s $HOME/.dotfiles/osx/.finicky.js $HOME/.finicky.js
