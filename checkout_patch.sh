cd `dirname $0`
mkdir distcc
cd distcc
svn checkout http://distcc.googlecode.com/svn/trunk/ ./
svn patch ../distcc_xcode.patch
