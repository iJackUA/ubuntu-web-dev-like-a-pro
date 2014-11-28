apt-get install -y libgtk2.0-0:i386 libstdc++6:i386 libnss3-1d:i386 lib32nss-mdns libxml2:i386 libxslt1.1:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386
cd /tmp
apt-get download libgnome-keyring0:i386
dpkg-deb -R libgnome-keyring0_3.8.0-2_i386.deb gnome-keyring
cp gnome-keyring/usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/i386-linux-gnu/
ln -s /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/i386-linux-gnu/libgnome-keyring.so.0
ln -s /usr/lib/i386-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
ln -s /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
wget http://airdownload.adobe.com/air/lin/download/2.6/AdobeAIRInstaller.bin -O  /tmp/AdobeAIRInstaller.bin -q
chmod a+x /tmp/AdobeAIRInstaller.bin
/tmp/AdobeAIRInstaller.bin -silent
rm ./AdobeAIRInstaller.bin
rm /usr/lib/libgnome-keyring.so.0
rm /usr/lib/libgnome-keyring.so.0.2.0
