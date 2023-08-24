OS=$1
if [ "$OS" = "" ]
then
  echo "Missing OS "
  echo "Options: osx, linux"
  exit
fi

git clone git@github.com:cristianoliveira/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

make $OS

