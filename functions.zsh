function lowercase {
    python -c "print('$1'.lower())"
}


# I miss this feature in python
# Install some library on env and save it in given file
# Ex: pip-install-save mock test-requirements.txt
function pip-install-save { pip install $1 && touch $2 && pip freeze | grep $1 >> $2 }

# lazyperson Curl wrappers
function cget { curl -XGET -D - $@ }
function cpost { curl -XPOST -D - $@ }

# lazyperson - makes an directory and enter in it
function mkdircd { mkdir $1 && cd $1 }

# Open on browser the search
# Ex: $ google dotfiles
# will open http://google.com/search?q=dofiles
function google() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done

    os=$(lowercase $(uname -s))

    if [[ $os == 'darwin' ]]; then
      open "http://www.google.com/search?q=$search"
    else
      xdg-open "http://www.google.com/search?q=$search"
    fi
}

# Creates a gif for a given mov file
function gifify() {
  if [[ -n "$1" ]]; then
      if [[ $2 == '--good' ]]; then
            ffmpeg -i $1 -r 10 -vcodec png out-static-%05d.png
            time convert -verbose +dither -layers Optimize -resize 600x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - > $1.gif
            rm out-static*.png
      else
            ffmpeg -i $1 -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
      fi
   else
        echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
   fi
}
