cd `dirname $0`
rm -rf distcc
mkdir distcc
cd distcc
svn checkout http://distcc.googlecode.com/svn/tags/distcc-3.1/ ./
svn patch ../distcc_xcode.patch
cp ../configure ./
cp ../config.h.in ./src/