#!/bin/bash
echo TES3MP OpenMW Installer!
echo  https://github.com/allylavanda/TES3MP-Linux-Installer                                                                                                             
echo Starting download of TES3MP

wget https://github.com/TES3MP/TES3MP/releases/download/tes3mp-0.8.1/tes3mp-GNU+Linux-x86_64-release-0.8.1-68954091c5-6da3fdea59.tar.gz
echo Download complete, extracting...
echo Installing dependencies! - twolame,wavpack,libgme,libopenmpt,chromaprint,libluajit
tar xvf tes3mp-GNU+Linux-x86_64-release-0.8.1-68954091c5-6da3fdea59.tar.gz
cd TES3MP
cwd=$(pwd)

echo -e "#!/bin/bash\necho Starting TES3MP Server\nkonsole --hold -e sh $cwd/tes3mp-server > /dev/null 2>&1 &\necho TES3MP-SERVER Started.\nkonsole --hold -e sh $cwd/tes3mp > /dev/null 2>&1 &\necho TES3MP Started." > startmw.sh
chmod +x $cwd/startmw.sh
wget https://github.com/allylavanda/TES3MP-Linux-Installer/blob/main/microwave.png
mv microwave.png ~/.local/share/icons/microwave.png
echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nType=Application\nTerminal=false\nExec=$cwd/startmw.sh\nName=TES3MP\nComment=OpenMW TES3MP+Server Launcher\nIcon=~/.local/share/icons/microwave.png" > ~/.local/share/applications/TES3MP.desktop
chmod +x ~/.local/share/applications/TES3MP.desktop

sh openmw-wizard
