echo
echo  _______ ______  _____ ____  __  __ _____    _____ _   _  _____ _______       _      _      ______ _____  
echo |__   __|  ____|/ ____|___ \|  \/  |  __ \  |_   _| \ | |/ ____|__   __|/\   | |    | |    |  ____|  __ \ 
echo    | |  | |__  | (___   __) | \  / | |__) |   | | |  \| | (___    | |  /  \  | |    | |    | |__  | |__) |
echo    | |  |  __|  \___ \ |__ <| |\/| |  ___/    | | | . ` |\___ \   | | / /\ \ | |    | |    |  __| |  _  / 
echo    | |  | |____ ____) |___) | |  | | |       _| |_| |\  |____) |  | |/ ____ \| |____| |____| |____| | \ \ 
echo    |_|  |______|_____/|____/|_|  |_|_|      |_____|_| \_|_____/   |_/_/    \_\______|______|______|_|  \_\
echo                                                                                                           
echo                                                                                                                                                                                                                              
echo   ____  _____  ______ _   _   __  __  ____  _____  _____   ______          _______ _   _ _____                    
echo  / __ \|  __ \|  ____| \ | | |  \/  |/ __ \|  __ \|  __ \ / __ \ \        / /_   _| \ | |  __ \                   
echo | |  | | |__) | |__  |  \| | | \  / | |  | | |__) | |__) | |  | \ \  /\  / /  | | |  \| | |  | |                  
echo | |  | |  ___/|  __| | . ` | | |\/| | |  | |  _  /|  _  /| |  | |\ \/  \/ /   | | | . ` | |  | |                  
echo | |__| | |    | |____| |\  | | |  | | |__| | | \ \| | \ \| |__| | \  /\  /   _| |_| |\  | |__| |                  
echo  \____/|_|    |______|_| \_| |_|  |_|\____/|_|  \_\_|  \_\\____/   \/  \/   |_____|_| \_|_____/                   
echo  
echo
echo ___.                  .__  .__        .__                                .___       
echo \_ |__ ___.__. _____  |  | |  | ___.__|  | _____ ___  ______    ____   __| ______   
echo  | __ <   |  | \__  \ |  | |  |<   |  |  | \__  \\  \/ \__  \  /    \ / __ |\__  \  
echo  | \_\ \___  |  / __ \|  |_|  |_\___  |  |__/ __ \\   / / __ \|   |  / /_/ | / __ \_
echo  |___  / ____| (____  |____|____/ ____|____(____  /\_/ (____  |___|  \____ |(____  /
echo     \/\/           \/          \/              \/          \/     \/     \/     \/ 
echo  https://github.com/allylavanda/TES3MP-Linux-Installer                                                                                                             
                                                                                                                   
                                                                                                 
echo Starting download of TES3MP

wget https://github.com/TES3MP/TES3MP/releases/download/tes3mp-0.8.1/tes3mp-GNU+Linux-x86_64-release-0.8.1-68954091c5-6da3fdea59.tar.gz
echo Download complete, extracting

tar xvf tes3mp-GNU+Linux-x86_64-release-0.8.1-68954091c5-6da3fdea59.tar.gz
cd TES3MP
cwd=$(pwd)

echo -e "echo Starting TES3MP Server\ngnome-terminal -- sh $cwd/tes3mp-server.sh\necho TES3MP-SERVER Started.\ngnome-terminal -- sh $cwd/tes3mp.sh\necho TES3MP Started." > startmw.sh
chmod +x cwd/startmw.sh
echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nType=Application\nTerminal=false\nExec=cwd/startmw.shName=TES3MPIcon=~/.local/share/icons/TES3MP.png" > ~/.local/share/applications/TES3MP.desktop
