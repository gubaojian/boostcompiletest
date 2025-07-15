curl -O https://archives.boost.io/release/1.88.0/source/boost_1_88_0.tar.gz
tar -zxvf boost_1_88_0.tar.gz
cd boost_1_88_0
./bootstrap.sh --prefix=$HOME/cdeps/boost
./b2 -j8
./b2 install --prefix=$HOME/cdeps/boost
cd ..
rm -rf cdeps_boost_1_88.zip
zip -r cdeps_boost_1_88.zip $HOME/cdeps/boost