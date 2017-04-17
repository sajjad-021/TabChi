#!/usr/bin/env bash

onf() {
 wget https://valtman.name/files/telegram-cli-1222
		mv telegram-cli-1222 tg
	  	chmod +x tg
       chmod +x anticrash.sh
}

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

ins1() {
cd libs

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -f
sudo dpkg -a --configure
sudo apt-get dist-upgrade
sudo dpkg --configure -a
sudo sudo apt-get dist-upgrade

sudo apt-get install -y tor
 sudo apt-get install -y openvpn
  sudo apt-get install network-manager-openvpn

sudo service tor start
 sudo service openvpn start

export http_proxy="socks5://127.0.0.1:9150"
 export https_proxy="socks5://127.0.0.1:9150"
  export ftp_proxy="socks5://127.0.0.1:9150"
  
		sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
	   	sudo apt-get install g++-4.7 -y c++-4.7 -y
	    	sudo apt-get update
          sudo apt-get upgrade
        
	        	sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y
            
            		sudo apt-get install screen -y
               		sudo apt-get install tmux -y
                 		sudo apt-get install libstdc++6 -y
                   		sudo apt-get install lua-lgi -y
	                     	sudo apt-get install libnotify-dev -y
                        
cd ..
}

ins2() {
sudo apt-get update
sudo apt-get install -y lua5.3 liblua5.3-dev git redis-server libssl-dev fortune-mod fortunes cowsay fortune unzip make libexpat1-dev libcurl3 libcurl3-gnutls libcurl4-openssl-dev ruby ruby-dev
sudo gem install redis-dump
git clone http://github.com/keplerproject/luarocks
cd luarocks
./configure --lua-version=5.3 --versioned-rocks-dir --lua-suffix=5.3
make build
sudo make install
sudo luarocks-5.3 install --server=http://luarocks.org/dev openssl
rocklist="luasocket luasec multipart-post lpeg dkjson serpent redis-lua luafilesystem oauth uuid html-entities luaossl feedparser lua-curl telegram-bot-lua"
for rock in $rocklist; do
    sudo luarocks-5.3 install $rock
done
sudo -k
cd ..
}

ins3() {
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev tmux subversion

  sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean && sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev tmux subversion -y

   sudo apt-get update
     sudo apt-get install -y python-software-properties software-properties-common
        sudo add-apt-repository -y ppa:pi-rho/dev
           sudo apt-get update
              sudo apt-get install -y tmux=2.0-1~ppa1~t
              
                  sudo apt-get -y install libreadline6 libreadline-dev libreadline-dev libreadline6-dev libconfig-dev libssl-dev tmux lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip redis-server autoconf git g++ libjansson-dev libpython-dev expat libexpat1-dev ppa-purge python3-pip python3-dev software-properties-common python-software-properties gcc-6

                      sudo add-apt-repository ppa:ubuntu-toolchain-r/test
                          sudo apt-get update
                              sudo apt-get upgrade
                                 sudo apt-get dist-upgrade
                                     sudo ppa-purge
                                        sudo apt-get install python3-pip
                                           pip3 install redis
                                               sudo apt-get update; sudo apt-get upgrade
                                                   sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev

sudo apt-get install lua-lgi
 sudo apt-get install software-properties-common
   sudo add-apt-repository ppa:ubuntu-toolchain-r/test 
    sudo apt-get install libstdc++6
     sudo apt-get update
      sudo apt-get upgrade
        sudo apt-get dist-upgrade

wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
 tar zxpf luarocks-2.2.2.tar.gz
 cd luarocks-2.2.2
 ./configure; sudo make bootstrap
 sudo luarocks install luasocket
 sudo luarocks install luasec
 sudo luarocks install redis-lua
 sudo luarocks install lua-term
 sudo luarocks install serpent
 sudo luarocks install oauth
 sudo luarocks install fakeredis
 sudo luarocks install dkjson
 sudo luarocks install xml
 sudo luarocks install feedparser
 sudo luarocks install lanes
 sudo luarocks install Lua-cURL
 sudo service redis-server start
 cd ..
 rm -rf luarocks-2.2.2.tar.gz
 sudo apt-get install python-setuptools python-dev build-essential
 sudo easy_install pip
 sudo pip install redis
 }
  
 ins4() {
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
sudo apt-get install -f
sudo dpkg -a --configure
sudo apt-get dist-upgrade
sudo dpkg --configure -a
sudo sudo apt-get dist-upgrade
            
            		sudo apt-get install screen -y
               		sudo apt-get install tmux -y
                 		sudo apt-get install libstdc++6 -y
                   		sudo apt-get install lua-lgi -y
	                     	sudo apt-get install libnotify-dev -y

sudo luarocks install redis
sudo service redis-server restart -y
}

up() {
cd $HOME && rm -rf .telegram-cli && rm -rf TabChi && rm -rf Tabchi && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean && git clone https://github.com/tgMember/TabChi.git && cd TabChi && chmod 777 install.sh && ./install.sh conf
}

if [ "$1" = "up" ]; then
  up
fi

if [ "$1" = "conf" ]; then
onf
ins1
ins2
ins3
ins4
fi

   echo -e "\033[38;5;208m"
   echo -e "install compelet"
   echo -e "creat you robot whith  >>>  ./install.sh"
   echo -e "\033[0;00m"
   echo -e "\e[36m"

lua creator.lua
