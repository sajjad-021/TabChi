#!/usr/bin/env bash
  declare -A logo
    seconds="0.003"
logo[-1]=" ::::::::::  :::::::      ::     ::  ::::::::  ::     ::  ::::::  :::::::: ::::::  "
logo[0]="     +:     :+    :+:    :+:+   +::+ +:       :+:+   +:+: +:   :+ +:       +:   :+ "
logo[1]="     :+     +:           :+ +:+:+ :+ :+       :+ +:+:+ :+ :+   +: :+       :+   +: "
logo[2]="     ++     :#           ++  +:+  ++ +++++#   ++  +:+  ++ #+++++  +++:+#   +++++#  "
logo[3]="     ++     +#  +#+#+    #+   +   #+ #+       #+   +   +# #+   +# #+       #+   +# "
logo[4]="     +#     #+     +#    +#       +# +#       +#       #+ +#    # +#       +#    #+"
logo[5]="     ##      #######     ##       ## ######## ##       ## ####### ######## ##    ##"
    printf "\033[32;4;208m\t"
    for i in ${!logo[@]}; do
        for x in `seq 0 ${#logo[$i]}`; do
            printf "${logo[$i]:$x:1}"
            sleep $seconds
        done
        printf "\n\t"
    done
printf "\n"

sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev tmux subversion

sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean && sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev tmux subversion -y && cd $HOME && rm -rf .telegram-cli

cd TabChi
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get install libreadline-dev libssl-dev lua5.2 liblua5.2-dev git make unzip redis-server curl libcurl4-gnutls-dev
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make autoconf unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
sudo apt-get install libreadline-dev
sudo apt install libreadline-dev 
sudo apt-get install libreadline6 
sudo apt-get install libreadline6-dev
sudo apt-get install libconfig-dev 
sudo apt-get install libssl-dev 
sudo apt-get install lua5.2 
sudo apt-get install liblua5.2-dev 
sudo apt-get install lua-socket 
sudo apt-get install lua-sec 
sudo apt-get install lua-expat 
sudo apt-get install libevent-dev 
sudo apt-get install redis-server 
sudo apt-get install libjansson-dev 
sudo apt-get install libpython-dev 
sudo apt-get install expat libexpat1-dev 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install -y tor
sudo apt-get install -y openvpn
sudo apt-get install network-manager-openvpn
sudo service tor start
sudo service openvpn start
export http_proxy="socks5://127.0.0.1:9150"
export https_proxy="socks5://127.0.0.1:9150"
export ftp_proxy="socks5://127.0.0.1:9150"

THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

update() {
  git pull
  git submodule update --init --recursive
  install_rocks
}

# Will install luarocks on THIS_DIR/.luarocks
install_luarocks() {
  git clone https://github.com/keplerproject/luarocks.git
  cd luarocks
  git checkout tags/v2.3.0-rc2 # Release Candidate

  PREFIX="$THIS_DIR/.luarocks"

  ./configure --prefix=$PREFIX --sysconfdir=$PREFIX/luarocks --force-config

  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  make build && make install
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting.";exit $RET;
  fi

  cd ..
}

install_rocks() {
  ./.luarocks/bin/luarocks install luasec
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install lbase64 20120807-3
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install luafilesystem
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install lub
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install luaexpat
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install redis-lua
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install lua-cjson
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install fakeredis
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install xml
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install feedparser
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install serpent
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi
}

install() {
  git pull
  git submodule update --init --recursive
  git clone https://github.com/vysheng/tg.git
  cd tg
  if [ $RET -ne 0 ]; then
    autoconf -i
  fi
  ./configure && make

  RET=$?; if [ $RET -ne 0 ]; then
    echo "Error. Exiting."; exit $RET;
  fi
  cd ..
  install_luarocks
  install_rocks
  
  if [ -d /mnt/c/Windows ]; then
    echo "Patching bot.lua for Windows 10 support..."
    sed -i '5d' bot/bot.lua
    sed -i '5d' bot/bot.lua
    sed -i '5i\require("bot/utils")' bot/bot.lua
    sed -i '6i\require("bot/permissions")' bot/bot.lua
    sed -i '7i\--File patched to support W10' bot/bot.lua
  fi
  
}

if [ "$1" = "install" ]; then
  install
elif [ "$1" = "update" ]; then
  update
else
  if [ ! -f ./tg/telegram.h ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
  fi
cd $HOME
cd TabChi
wget "https://valtman.name/files/telegram-cli-1222"
mv telegram-cli-1222 tg
chmod 777 tg
sudo apt-get install libreadline-dev
sudo apt install libreadline-dev 
sudo apt-get install libreadline6 
sudo apt-get install libreadline6-dev
sudo apt-get install libconfig-dev 
sudo apt-get install libssl-dev 
sudo apt-get install lua5.2 
sudo apt-get install liblua5.2-dev 
sudo apt-get install lua-socket 
sudo apt-get install lua-sec 
sudo apt-get install lua-expat 
sudo apt-get install libevent-dev 
sudo apt-get install make 
sudo apt-get install unzip 
sudo apt-get install git 
sudo apt-get install redis-server 
sudo apt-get install autoconf 
sudo apt-get install g++ 
sudo apt-get install libjansson-dev 
sudo apt-get install libpython-dev 
sudo apt-get install expat libexpat1-dev 
sudo apt-get install ppa-purge 
sudo apt-get install python3-pip 
sudo apt-get install python3-dev
sudo apt-get install software-properties-common
sudo apt-get install python-software-properties
sudo apt-get install gcc-6
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo ppa-purge
sudo service redis-server restart
sudo apt-get update 
sudo apt-get upgrade
 sudo apt-get install libreadline-dev libssl-dev lua5.2 liblua5.2-dev git make unzip redis-server curl libcurl4-gnutls-dev
wget http://luarocks.org/releases/luarocks-2.4.2.tar.gz 
 tar zxpf luarocks-2.4.2.tar.gz 
 cd luarocks-2.4.2
 make build && make install
 ./configure && sudo make bootstrap 
sudo luarocks install luasec 
sudo luarocks install luasocket 
sudo luarocks install redis-lua 
sudo luarocks install lua-term 
sudo luarocks install serpent
sudo luarocks install dkjson 
sudo luarocks install Lua-cURL
sudo apt-get update; sudo apt-get upgrade -y --force-yes; sudo apt-get dist-upgrade -y --force-yes; sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev libjansson* libpython-dev make unzip git redis-server g++ autoconf -y --force-yes
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -f
sudo dpkg -a --configure
sudo apt-get dist-upgrade
sudo dpkg --configure -a
sudo sudo apt-get dist-upgrade
sudo apt-get install lua50
sudo apt-get install lua5.1
sudo apt-get install lua5.2
sudo apt-get install lua5.3
sudo apt-get install libreadline6 libreadline-dev libreadline-dev libreadline6-dev libconfig-dev libssl-dev tmux lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip redis-server autoconf git g++ libjansson-dev libpython-dev expat libexpat1-dev ppa-purge python3-pip python3-dev software-properties-common python-software-properties 
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo ppa-purge
sudo service redis-server restart
cd ..
wget http://luarocks.org/releases/luarocks-2.4.2.tar.gz
tar zxpf luarocks-2.4.2.tar.gz
rm -rf luarocks-2.4.2.tar.gz
cd luarocks-2.4.2
  PREFIX="$THIS_DIR/.luarocks"
  ./configure --prefix=$PREFIX --sysconfdir=$PREFIX/luarocks --force-config
 make build && make install
./configure; sudo make bootstrap
sudo luarocks install luasec
 sudo luarocks install luasocket
sudo luarocks install redis-lua
 sudo luarocks install lua-term
sudo luarocks install serpent
 sudo luarocks install dkjson
sudo luarocks install Lua-cURL
  ./bin/luarocks install luasocket  
  ./bin/luarocks install oauth
  ./bin/luarocks install redis-lua
  ./bin/luarocks install lua-cjson
  ./bin/luarocks install fakeredis
  ./bin/luarocks install xml
  ./bin/luarocks install feedparser
  ./bin/luarocks install serpent
  cd ..
  ./.luarocks/bin/luarocks install luasocket  
  ./.luarocks/bin/luarocks install oauth
  ./.luarocks/bin/luarocks install redis-lua
  ./.luarocks/bin/luarocks install lua-cjson
  ./.luarocks/bin/luarocks install fakeredis
  ./.luarocks/bin/luarocks install xml
  ./.luarocks/bin/luarocks install feedparser
  ./.luarocks/bin/luarocks install serpent
echo -e "\033[38;5;600m"
echo -e " :::::::::::  ::::::::     ::::    ::::  :::::::::: ::::    ::::  :::::::::  :::::::::: ::::::::: "
echo -e "     :+:     :+:    :+:    +:+:+: :+:+:+ :+:        +:+:+: :+:+:+ :+:    :+: :+:        :+:    :+:"
echo -e "     +:+     +:+           +:+ +:+:+ +:+ +:+        +:+ +:+:+ +:+ +:+    +:+ +:+        +:+    +:+"
echo -e "     +#+     :#:           +#+  +:+  +#+ +#++:++#   +#+  +:+  +#+ +#++:++#+  +#++:++#   +#++:++#: "
echo -e "     +#+     +#+   +#+#    +#+       +#+ +#+        +#+       +#+ +#+    +#+ +#+        +#+    +#+"
echo -e "     #+#     #+#    #+#    #+#       #+# #+#        #+#       #+# #+#    #+# #+#        #+#    #+#"
echo -e "     ###      ########     ###       ### ########## ###       ### #########  ########## ###    ###"   
echo -e "           ----------Installation Completed! Create a bot with creator.lua ----------             "
lua creator.lua
