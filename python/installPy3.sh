wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz
tar -xzvf Python-3.6.0.tgz
cd  Python-3.6.0
./configure --prefix=/usr/local
make & make install
cd ..
rm -rf Python-3.6.0.tgz Python-3.6.0