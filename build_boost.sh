SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Script directory: $SCRIPT_DIR"
rm -rf boost_1_88_0.tar.gz
curl -O https://archives.boost.io/release/1.88.0/source/boost_1_88_0.tar.gz
tar -zxvf boost_1_88_0.tar.gz
cd boost_1_88_0
./bootstrap.sh --prefix=$HOME/cdeps/boost
./b2 -d1 -j12
./b2 -d1 install --prefix=$HOME/cdeps/boost
cd ..
rm -rf cdeps_boost_1_88.zip
cd $HOME/cdeps/
zip -r cdeps_boost_1_88.zip boost
echo "Boost build and packaging completed."
mv cdeps_boost_1_88.zip "$SCRIPT_DIR/cdeps_boost_1_88.zip"
echo "Package moved to script directory: $SCRIPT_DIR/cdeps_boost_1_88.zip"
echo "Build script completed successfully."
