cd `dirname $0`

XcodePath=`xcode-select --print-path`

#build distcc
cd distcc
./configure --disable-Werror
make

#link to xcode
sudo rm "$XcodePath/Toolchains/XcodeDefault.xctoolchain/usr/bin/distcc"
sudo ln ./distcc "$XcodePath/Toolchains/XcodeDefault.xctoolchain/usr/bin/distcc"

