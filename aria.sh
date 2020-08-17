tracker_list=$(curl -Ns https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt | awk '$1' | tr '\n' ',')
wget -q https://github.com/P3TERX/aria2.conf/raw/master/dht.dat
wget -q https://github.com/P3TERX/aria2.conf/raw/master/dht6.dat
echo "max-concurrent-downloads=$MAX_CONCURRENT_DOWNLOADS
bt-tracker=$tracker_list" >> confar.conf
aria2c --conf-path=confar.conf