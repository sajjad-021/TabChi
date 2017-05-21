#!/usr/bin/env bash
#Create BY : @sajjad_021

install_luarocks() {
 echo -e "\e[38;5;142mInstalling LuaRocks\e"
  git clone https://github.com/keplerproject/luarocks.git
  cd luarocks
  git checkout tags/v2.4.2 # Current stable

  PREFIX="$THIS_DIR/.luarocks"

  ./configure --prefix=$PREFIX --sysconfdir=$PREFIX/luarocks --force-config
   make build && make install
cd ..
  rm -rf luarocks
}

install_rocks() {
echo -e "\e[38;5;105mInstall rocks service\e"
rocks="luasocket luasec redis-lua lua-term serpent dkjson Lua-cURL multipart-post lanes"
    for rock in $rocks; do
     sudo luarocks install $rock
    done
}
  
tg() {
echo -e "\e[38;5;099minstall telegram-cli\e"
    rm -rf ../.telegram-cli
    wget https://valtman.name/files/telegram-cli-1222
    mv telegram-cli-1222 telegram-cli
    chmod +x telegram-cli
    chmod +x anticrash.sh
}
  
install2() {
echo -e "\e[38;5;034mInstalling more dependencies\e"
    install_luarocks
    install_rocks
    py
    tg
}

is() {
install2
}

py() {
 sudo apt-get install python-setuptools python-dev build-essential 
 sudo easy_install pip
 sudo pip install redis
}

 if [ ! -f telegram-cli ]; then
    echo -e "\033[38;5;208mError! Tg not found, Please reply to this message:\033[0;00m"
    read -p "Do you want to install starter files? [y/n] = "
	if [ "$REPLY" == "y" ] || [ "$REPLY" == "Y" ]; then
        is
    elif [ "$REPLY" == "n" ] || [ "$REPLY" == "N" ]; then
        exit 1
  fi
fi

lua creator.lua
