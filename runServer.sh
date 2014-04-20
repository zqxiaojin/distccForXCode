cd `dirname $0`

killall distccd
cd distcc
#./distccd --daemon --allow 192.168.1.0/8 --verbose --inetd
rm ../distccd.log

./distccd  --daemon --allow 127.0.0.1 --allow 10.1.0.0/16 --allow 192.168.0.0/8 -j 8 --stats --log-level info --log-file=../distccd.log


tail -f ../distccd.log

