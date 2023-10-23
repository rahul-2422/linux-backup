#System Updates
alias update='sudo nala upgrade -y; sleep 2; sudo snap refresh; sleep 2; flatpak update -y'

#System Networking Features

alias ip='hostname -I'

alias vpn-gui='protonvpn >& /dev/null &'
alias vpn='protonvpn-cli c --cc US'
alias vpns='protonvpn-cli s'
alias vpnd='protonvpn-cli d'

alias vpn-kill='nmcli connection delete pvpn-ipv6leak-protection'        #VPN-killswitch

alias wifi-off='nmcli radio wifi off'
alias wifi-on='nmcli radio wifi on'

alias wific='nmcli connection show --active'
alias wifils='nmcli connection show'
alias wifinf='nmcli connection up id "Night Fury"'
alias wifipg='nmcli connection up id "IIITS_PGStudents"'
alias wifist='nmcli connection up id "IIITS_Student"'

alias buds='bluetoothctl connect 74:D7:13:18:1D:7D'
alias budsd='bluetoothctl disconnect'
alias budsr='bluetoothctl disconnect; sleep 2; bluetoothctl connect 74:D7:13:18:1D:7D'

#Deb and System Apps

alias files='nautilus . >& /dev/null &'
alias monitor='gnome-system-monitor >& /dev/null &'
alias notepad='notepadqq >& /dev/null &'
alias discord='discord >& /dev/null &'
alias r-studio='rstudio >& /dev/null &'

#Frequent Directories and files

alias my-docs='cd ~/Drive-R/Me-Docs'
alias btp='cd ~/Drive-D/clg/BTP-files'
alias clg='cd ~/Drive-D/clg'
alias sdc='cd ~/Downloads/sdc'
alias examples='cd ~/Drive-D/git-examples'
alias r-codes='cd ~/Drive-D/clg/7/ida/r-work-directory/ida-r-codes'
alias timetable='open ~/Pictures/Screenshots/TimeTable.png >& /dev/null &'

#Flatpak Apps

alias timer='flatpak run com.github.vikdevelop.timer >& /dev/null &'
alias spotify='flatpak run com.spotify.Client >& /dev/null &'
alias telegram='flatpak run org.telegram.desktop >& /dev/null &'

#Miscellaneous

alias chat='irssi -c chat.freenode.net -n night-fury'

alias phone='scrcpy -w --push-target=/sdcard/Scrcpy --window-title="Night Fury" --power-off-on-close &> /dev/null &'

#Web-Apps startup aliases

#brave
alias brave='/opt/brave.com/brave/brave-browser >& /dev/null &'
alias incognito='/opt/brave.com/brave/brave-browser --incognito'

#yocket
alias yocket='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=anmfafpacpnoaapbflkakhcklbhmfiko &> /dev/null &'

#mail and messages
alias mail='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=fmgjjmmmlfnkbppncabfkddbjimcfncm >& /dev/null &'
alias messages='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hpfldicfbfomlpcikngkocigghgafkph >& /dev/null &'

#social
alias snapchat='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=abdndmcckigaeepaljhpcngbfdkbiggb >& /dev/null &'
alias whatsapp='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm >& /dev/null &'
alias insta='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=akpamiohjfcnimfljfndmaldlcfphjmp >& /dev/null &'

alias redit='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=lgnggepjiihbfdbedefdhcffnmhcahbm >& /dev/null &'

#streaming
alias youtube='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=agimnkijcaahngcdmfeangaknmldooml >& /dev/null &'
alias aniwatch='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=dnnjhahcjgblhnhbdgjlgmeocmdmbkhf >& /dev/null &'
alias mangareader='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mkncjdlcffgkpmbakeljipclhccmfbem >& /dev/null &'

#productivity
alias keep='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=eilembjdkfgodjkcjnpgpaenohkicgjd >& /dev/null &'
alias medium='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hhfiljfkackbfbokpmngfpjffnlmjljd >& /dev/null &'

alias github='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mjoklplbddabcmpepnokjaffbmgbkkgg >& /dev/null &'

#chatbots
alias poe='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gabodgbmieebkjkpdlfnnfbjldgadkpg >& /dev/null &'
alias chatpdf='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=njjkbemknbnbclmeofbfocleneggdedh >& /dev/null &'
alias chatgpt='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=jckaldkomadaenmmgladeopgmfbahfjm >& /dev/null &'
alias forefront='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=ljpmdjicnimmogcbnnlgemfkocmpcikp >& /dev/null &'

#typing trainers
alias keybr='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=pcklphganfmjgkefaemldhkgjhicbied >& /dev/null &'
alias monkeytype='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=picebhhlijnlefeleilfbanaghjlkkna >& /dev/null &'
alias typing='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=iilmbpfjemcfdofmchhfmbdijpmnedaj >& /dev/null &'





