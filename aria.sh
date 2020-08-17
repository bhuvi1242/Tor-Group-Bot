tracker_list=$(curl -Ns https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt | awk '$1' | tr '\n' ',')
wget -q https://github.com/P3TERX/aria2.conf/raw/master/dht.dat
wget -q https://github.com/P3TERX/aria2.conf/raw/master/dht6.dat
export MAX_CONCURRENT_DOWNLOADS=5
echo "bt-tracker=$tracker_list
max-concurrent-downloads=$MAX_CONCURRENT_DOWNLOADS" >> confar.conf
aria2c --conf-path=aria2c.conf