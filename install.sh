sudo mkdir /Apps
cd /Apps
sudo git clone https://github.com/PJTewkesbury/ssdp-responder.git
cd ssdp-responder
sudo apt install automake autoconf
./autogen.sh
./configure --prefix=/usr --sysconfdir=/etc --runstatedir=/var/run LDFLAGS="-static"
make clean
make -j4
make install-strip
sudo systemctl daemon-reload
sudo systemctl enable ssdpd
