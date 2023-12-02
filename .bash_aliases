#System aliases
alias lock='loginctl lock-session'

alias l1='ls -1'

alias ..='cd ..'
alias ...='cd ../..'

alias mv='mv -v'
alias cp='cp -rv'
alias rm='rm -Iv'

alias aliases='nano ~/.bash_aliases && bash'

alias phone='kdeconnect-app &> /dev/null & disown'

#Function Scripts

function bgrun() {
	"$@" &> /dev/null & disown
}

function sem() {
	cd ~/clg/Sem-"$1"
}

function count() {
	l1 "$@" | wc -l
}

#Function Aliases

alias bg='bgrun'

#Python runner Alias

alias py='python3'

#System Package manager

alias update='sudo -S nala upgrade -y; sleep 2; flatpak update -y'
alias install='sudo nala install'
alias search='nala search -n'

#System Networking Features

alias ip='hostname -I'

alias vpn-gui='protonvpn >& /dev/null & disown'
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
alias wifi-staff='nmcli connection up id "IIITS_Staff"'

alias stonec='bluetoothctl connect A4:81:77:A7:FF:1E'
alias stoned='bluetoothctl disconnect A4:81:77:A7:FF:1E'

alias pods='bluetoothctl connect 74:D7:13:18:1D:7D'
alias podsd='bluetoothctl disconnect 74:D7:13:18:1D:7D'
alias podsr='bluetoothctl disconnect 74:D7:13:18:1D:7D; sleep 2; bluetoothctl connect 74:D7:13:18:1D:7D'

#Frequent Directories and files

alias medocs='cd ~/Documents/Me-Docs'
alias btp='cd ~/clg/BTP-files'
alias clg='cd ~/clg'
alias sdc='cd ~/Documents/SDC-documents'
alias r-codes='cd ~/clg/Sem-7/ida/r-work-directory/ida-r-codes'

alias timetable='open ~/Pictures/TimeTable.png >& /dev/null & disown'

#Deb and System Apps

alias files='dolphin . >& /dev/null & disown'
alias monitor='plasma-systemmonitor >& /dev/null & disown'
alias notepad='kwrite >& /dev/null & disown'
alias calculator='gnome-calculator >& /dev/null & disown'

alias discord='discord >& /dev/null & disown'
alias r-studio='rstudio >& /dev/null & disown'
alias spotify='spotify >& /dev/null & disown'

#Flatpak Apps

alias timer='flatpak run com.github.vikdevelop.timer >& /dev/null & disown'
#alias spotify='flatpak run com.spotify.Client >& /dev/null &'
alias telegram='flatpak run org.telegram.desktop >& /dev/null & disown'

#Web-Apps startup aliases

#brave
alias brave='/opt/brave.com/brave/brave-browser >& /dev/null & disown'
alias incognito='/opt/brave.com/brave/brave-browser --incognito >& /dev/null & disown'

#yocket
alias yocket='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=anmfafpacpnoaapbflkakhcklbhmfiko &> /dev/null & disown'

#productivity
alias mail='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=fmgjjmmmlfnkbppncabfkddbjimcfncm >& /dev/null & disown'
alias messages='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hpfldicfbfomlpcikngkocigghgafkph >& /dev/null & disown'
alias tasks='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=lajndlaljpfaanonibpcaiakhjmjbaih >& /dev/null & disown'

#social
alias snapchat='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=abdndmcckigaeepaljhpcngbfdkbiggb >& /dev/null & disown'
alias whatsapp='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm >& /dev/null & disown'
alias insta='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=akpamiohjfcnimfljfndmaldlcfphjmp >& /dev/null & disown'

alias redit='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=lgnggepjiihbfdbedefdhcffnmhcahbm >& /dev/null & disown'

#streaming
alias youtube='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=agimnkijcaahngcdmfeangaknmldooml >& /dev/null & disown'
alias aniwatch='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=dnnjhahcjgblhnhbdgjlgmeocmdmbkhf >& /dev/null & disown'
alias mangareader='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mkncjdlcffgkpmbakeljipclhccmfbem >& /dev/null & disown'

#productivity
alias keep='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=eilembjdkfgodjkcjnpgpaenohkicgjd >& /dev/null & disown'
alias medium='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hhfiljfkackbfbokpmngfpjffnlmjljd >& /dev/null & disown'
alias docs='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mpnpojknpmmopombnjdcgaaiekajbnjb >& /dev/null & disown'
alias sheets='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=fhihpiojkbmbpdjeoajapmgkhlnakfjf >& /dev/null & disown'

alias github='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mjoklplbddabcmpepnokjaffbmgbkkgg >& /dev/null & disown'

#chatbots
alias poe='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gabodgbmieebkjkpdlfnnfbjldgadkpg >& /dev/null & disown'
alias chatpdf='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=njjkbemknbnbclmeofbfocleneggdedh >& /dev/null & disown'
alias chatgpt='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=jckaldkomadaenmmgladeopgmfbahfjm >& /dev/null & disown'
alias forefront='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=ljpmdjicnimmogcbnnlgemfkocmpcikp >& /dev/null & disown'
alias bard='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=nohacooabmgpjcdeajcfjgkpfibiffjf >& /dev/null & disown'

#typing trainers
alias keybr='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=pcklphganfmjgkefaemldhkgjhicbied >& /dev/null & disown'
alias monkeytype='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=picebhhlijnlefeleilfbanaghjlkkna >& /dev/null & disown'
alias typing='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=eackldhhcebhekccmchaaiibklikhdpk >& /dev/null & disown'

