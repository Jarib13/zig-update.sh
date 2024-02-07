if [[ $1 = "" ]]; then
  
  echo "Usage: ./zig-update.sh <zig-version.tar.xz>"

else

  sudo rm /usr/lib/zig-backup
  sudo mv /usr/lib/zig /usr/lib/zig-backup
  sudo mkdir /usr/lib/zig
  sudo tar -xf $1 -C /usr/lib/zig --strip-components 1
  sudo rm /usr/bin/zig
  sudo ln -s /usr/lib/zig/zig /usr/bin/zig

fi
