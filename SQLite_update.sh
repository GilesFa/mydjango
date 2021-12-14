sqlite3 --version
wget  https://www.sqlite.org/2019/sqlite-autoconf-3290000.tar.gz
tar -xaf sqlite-autoconf-3290000.tar.gz
cd sqlite-autoconf-3290000/
./configure --prefix=/usr/local/
make && make install
mv  /usr/bin/sqlite3 /usr/bin/sqlite3.bak
ln -s /usr/local/bin/sqlite3 /usr/bin/sqlite3
echo export LD_LIBRARY_PATH="/usr/local/lib">> ~/.bashrc
source ~/.bashrc
sqlite3 --version
