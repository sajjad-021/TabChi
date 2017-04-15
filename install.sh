#!/usr/bin/env bash

wget http://valtman.name/files/telegram-cli-1222
  mv telegram-cli-1222 tg
   chmod +x tg

sudo apt-get install -y tor
sudo apt-get install -y openvpn
sudo apt-get install network-manager-openvpn

sudo service tor start
sudo service openvpn start

export http_proxy="socks5://127.0.0.1:9150"
export https_proxy="socks5://127.0.0.1:9150"
export ftp_proxy="socks5://127.0.0.1:9150"

up() {
cd $HOME && rm -rf .telegram-cli && rm -rf TabChi && rm -rf Tabchi && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean && git clone https://github.com/tgMember/TabChi.git && cd TabChi && chmod 777 install.sh && ./install.sh && lua creator.lua
}

sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev tmux subversion
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean && sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev tmux subversion -y

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

wget http://luarocks.org/releases/luarocks-2.4.2.tar.gz
 tar zxpf luarocks-2.4.2.tar.gz
   rm -rf luarocks-2.4.2.tar.gz
    cd luarocks-2.4.2
     sudo apt-get install luarocks
      PREFIX="$THIS_DIR/.luarocks"
       ./configure --prefix=$PREFIX --sysconfdir=$PREFIX/luarocks --force-config
         make build && make install
          ./configure; sudo make bootstra
  ./bin/luarocks install luasocket  
  ./bin/luarocks install oauth
  ./bin/luarocks install redis-lua
  ./bin/luarocks install lua-cjson
  ./bin/luarocks install fakeredis
  ./bin/luarocks install xml
  ./bin/luarocks install feedparser
  ./bin/luarocks install serpent
cd ..

declare -A logo
    seconds="0.003"
logo[-1]=" ::::::::::  :::::::      ::     ::  ::::::::  ::     ::  ::::::  :::::::: :::::: "
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
   
sudo apt-get install -y tor
sudo apt-get install -y openvpn
sudo apt-get install network-manager-openvpn

sudo service tor start
sudo service openvpn start

export http_proxy="socks5://127.0.0.1:9150"
export https_proxy="socks5://127.0.0.1:9150"
export ftp_proxy="socks5://127.0.0.1:9150"

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo ppa-purge

 sudo luarocks install luasec
 sudo luarocks install luasocket
 sudo luarocks install redis-lua
 sudo luarocks install xml
 sudo luarocks install fakeredis
 sudo luarocks install lua-term
 sudo luarocks install serpent
 sudo luarocks install dkjson
 sudo luarocks install Lua-cURL
 
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

if [ "$1" = "up" ]; then
  up
fi


sudo apt-get install libreadline6 libreadline-dev libreadline-dev libreadline6-dev libconfig-dev libssl-dev tmux lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip redis-server autoconf git g++ libjansson-dev libpython-dev expat libexpat1-dev ppa-purge python3-pip python3-dev software-properties-common python-software-properties 

sudo add-apt-repository ppa:ubuntu-toolchain-r/test

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

sudo ppa-purge

sudo service redis-server restart

sudo apt-get install -y tor
sudo apt-get install -y openvpn
sudo apt-get install network-manager-openvpn

sudo service tor start
sudo service openvpn start

export http_proxy="socks5://127.0.0.1:9150"
export https_proxy="socks5://127.0.0.1:9150"
export ftp_proxy="socks5://127.0.0.1:9150"

lua creator.lua
