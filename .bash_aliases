#System aliases
alias lock='loginctl lock-session'

alias l1='ls -1'
alias sizeof='ls -lh'

## ls aliases with eza
alias ls='eza --color=always --tree --level=1 --git --icons=never'
alias ld='eza -D --color=always --tree --level=1'
alias lf='eza -f --color=always --tree --level=1 | grep -v /'
alias lh='eza -d .* --group-directories-first --color=always --tree --level=1'
alias ll='eza -a --group-directories-first --color=always --tree --level=1'

alias bat='batcat'

## cd aliases
alias cd='z'
alias ..='cd ..'
alias ...='cd ../..'

/() {
	cd ./$1
}

sem() {
	cd ~/clg/Sem-"$1"
}

count() {
	l1 "$@" | wc -l
}

lt() {
	if [[ $# -eq 0 ]]
	then
		ls --tree --level=1
	else
		ls --tree --level "$1"
	fi
}

alias cl='clear'
alias mv='mv -v'
alias cp='cp -rv'
alias rm='rm -Irv'
alias btctl='bluetoothctl'

mkcd() {
	mkdir -p $1 && cd $1
}

bgrun() {
	"$@" &> /dev/null & disown
}

alias backup='cp ~/.bash_aliases ~/Public/linux-backup/.bash_aliases; sleep 1; cp ~/.bashrc ~/Public/linux-backup/.bashrc; sleep 1; cp ~/.tmux.conf ~/Public/linux-backup/.tmux.conf; sleep 1; cp ~/.nanorc ~/Public/linux-backup/.nanorc;'

alias aliases='nano ~/.bash_aliases'

alias nanohelp='nano -v ~/Public/nano-cheet-sheet.txt'

alias note='nano ~/.notepad.txt'

#Phone apps aliases
alias phone='kdeconnect-app &> /dev/null & disown'

alias phnscr='scrcpy -SK &> /dev/null & disown'


#KDE-connect aliases and functions
alias kde-dir='cd ~/Downloads/kde-connect'

alias kder='kdeconnect-cli --refresh'
alias kdels='kdeconnect-cli -l'
alias send='kdeconnect-cli -n Night-Fury --share'
alias sendtxt='kdeconnect-cli -n Night-Fury --share-text'


#Git aliases
alias gits='git status'

create-repo() {
	git init -b main; sleep 1; git add .; sleep 1; git commit -m "Initial commit"; sleep 1; gh repo create;
}

push() {
	git add .; git commit -m "$@"; git push origin;
}

clonecd() {
    if (($# != 1)); then
        echo "Invalid number of parameters. Usage: clonecd <REPO_URL>"
        return 1
    fi
    gh repo clone "$@" && cd "$(basename "$@")" && code .
}

#Python Aliases and Functions

activate() {
	if [[$# -eq 0]] 
	then	
		source .venv/bin/activate
	else
		source "$1"/bin/activate
	fi
}

alias py='python3'
alias pip='uv pip'
alias pipl='uv pip list'
alias pipi='uv pip install'
alias pipui='uv pip uninstall'
alias cr-ev='uv venv && source .venv/bin/activate'
alias build-req='uv pip freeze > requirements.txt'

#System Package manager

alias update='sudo -S nala upgrade -y; sleep 2; flatpak update -y'
alias install='sudo nala install'
alias search='nala search -n'
alias uninstall='sudo nala remove'
alias purge='sudo nala purge'
alias autopurge='sudo nala autopurge'

#System Networking Features

alias ip='hostname -I'

alias vpn-gui='protonvpn >& /dev/null & disown'
alias vpn='protonvpn-cli c --cc US'
alias vpns='protonvpn-cli s'
alias vpnd='protonvpn-cli d'

alias vpn-kill='nmcli connection delete pvpn-ipv6leak-protection'        #VPN-killswitch

alias wifi-off='nmcli radio wifi off'
alias wifi-on='nmcli radio wifi on'
alias wifi-list='nmcli dev wifi list'

alias wific='nmcli connection show --active'
alias wifils='nmcli connection show'

alias wifinf='nmcli connection up id "night-fury"'
alias wifipg='nmcli connection up id "IIITS_PGStudents"'
alias wifist='nmcli connection up id "IIITS_Student"'
alias wifi-staff='nmcli connection up id "IIITS_Staff"'
alias wifim5='nmcli connection up id "Manadi"'
alias wifim2='nmcli connection up id "manadi"'

alias wifipg-c='nmcli dev wifi connect "IIITS_PGStudents" password "pg@st$ii1ts"'
alias wifist-c='nmcli dev wifi connect "IIITS_Student" password "iiit5@2k18"'
alias wifi-staff-c='nmcli dev wifi connect "IIITS_Staff" password "5t@ff@iiit5"'
alias wifim5-c='nmcli dev wifi connect "Manadi" password "iiit5@2k18"'
alias wifim2-c='nmcli dev wifi connect "manadi" password "iiit5@2k18"'

wifi-connect() {
	nmcli dev wifi connect "$1" password "$2"
}


connection-kill() {
	nmcli connection delete $@
}

#Bluetooth networking and control

alias battery='bluetoothctl info | grep -A20 "Alias" | grep -E "Alias|Battery Percentage"'

alias stonec='bluetoothctl connect A4:81:77:A7:FF:1E'
alias stoned='bluetoothctl disconnect A4:81:77:A7:FF:1E'

alias pods='bluetoothctl connect 74:D7:13:18:1D:7D'
alias podsd='bluetoothctl disconnect 74:D7:13:18:1D:7D'
alias podsr='bluetoothctl disconnect 74:D7:13:18:1D:7D; sleep 1; bluetoothctl connect 74:D7:13:18:1D:7D'

alias buds='bluetoothctl connect 40:72:18:03:91:55'
alias budsd='bluetoothctl disconnect 40:72:18:03:91:55'
alias budsr='bluetoothctl disconnect 40:72:18:03:91:55; sleep 1; bluetoothctl connect 40:72:18:03:91:55'

alias bar='bluetoothctl connect 41:42:BF:F5:DC:C8'
alias bard='bluetoothctl disconnect 41:42:BF:F5:DC:C8'
alias barr='bluetoothctl disconnect 41:42:BF:F5:DC:C8; sleep 1; bluetoothctl connect 41:42:BF:F5:DC:C8'

#Frequent Directories and files

alias medocs='cd ~/Documents/Me-Docs'
alias btp='cd ~/clg/BTP-files'
alias mindscope='cd ~/clg/mindscope'
alias clg='cd ~/clg'
alias sdc='cd ~/Documents/SDC-documents'
alias trash='cd ~/Downloads/trash'

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

alias matlab='cd /usr/local/MATLAB/R2023b/bin && ./matlab >& /dev/null & disown'
alias arduino='cd /home/rahul/Downloads/installation-zips/arduino/arduino-ide_2.3.1_Linux_64bit && ./arduino-ide >& /dev/null & disown'
#Flatpak Apps

alias timer='flatpak run com.github.vikdevelop.timer >& /dev/null & disown'
#alias spotify='flatpak run com.spotify.Client >& /dev/null &'
alias telegram='flatpak run org.telegram.desktop >& /dev/null & disown'

#Web-Apps startup aliases

#brave
alias brave='bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default'
alias incognito='/opt/brave.com/brave/brave-browser --incognito >& /dev/null & disown; clear;'

#miscellaneous
alias yocket='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=anmfafpacpnoaapbflkakhcklbhmfiko &> /dev/null & disown'
alias maps='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mnhkaebcjjhencmpkapnbdaogjamfbcj &> /dev/null & disown'

#productivity
alias mail='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=fmgjjmmmlfnkbppncabfkddbjimcfncm >& /dev/null & disown'
alias messages='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hpfldicfbfomlpcikngkocigghgafkph >& /dev/null & disown'
alias tasks='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=lajndlaljpfaanonibpcaiakhjmjbaih >& /dev/null & disown'
alias outlook='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=pkooggnaalmfkidjmlhoelhdllpphaga >& /dev/null & disown'
alias notion='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=bcjkojidffmiomhalhapkpbggeimbjcb >& /dev/null & disown'
alias notion-caledar='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gfjiemlnmgajmgihefeppogphdpjchab >& /dev/null & disown'
#social
alias snapchat='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=abdndmcckigaeepaljhpcngbfdkbiggb >& /dev/null & disown'
alias whatsapp='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm >& /dev/null & disown'
alias insta='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=akpamiohjfcnimfljfndmaldlcfphjmp >& /dev/null & disown'
alias redit='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=lgnggepjiihbfdbedefdhcffnmhcahbm >& /dev/null & disown'
alias whatsapp2='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser "--profile-directory=Profile 1" --app-id=hnpfjngllnobngcgfapefoaidbinmjnm >& /dev/null & disown'

#streaming
alias youtube='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=agimnkijcaahngcdmfeangaknmldooml >& /dev/null & disown'
alias aniwatch='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gbcghhelnehjmfhjfiinjbnkdnkigojc >& /dev/null & disown'
alias mangareader='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mkncjdlcffgkpmbakeljipclhccmfbem >& /dev/null & disown'

#productivity
alias keep='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=eilembjdkfgodjkcjnpgpaenohkicgjd >& /dev/null & disown'
alias medium='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hhfiljfkackbfbokpmngfpjffnlmjljd >& /dev/null & disown'
alias docs='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mpnpojknpmmopombnjdcgaaiekajbnjb >& /dev/null & disown'
alias sheets='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=fhihpiojkbmbpdjeoajapmgkhlnakfjf >& /dev/null & disown'
alias overleaf='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gjoaplgcpnmemdaklplebdapjihcoibe >& /dev/null & disown'

alias github='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mjoklplbddabcmpepnokjaffbmgbkkgg >& /dev/null & disown'

#chatbots
alias poe='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gabodgbmieebkjkpdlfnnfbjldgadkpg >& /dev/null & disown'
alias chatpdf='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=njjkbemknbnbclmeofbfocleneggdedh >& /dev/null & disown'
alias chatgpt='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=jckaldkomadaenmmgladeopgmfbahfjm >& /dev/null & disown'
alias forefront='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=ljpmdjicnimmogcbnnlgemfkocmpcikp >& /dev/null & disown'
alias gemini='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=nohacooabmgpjcdeajcfjgkpfibiffjf >& /dev/null & disown'
alias claude='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=fmpnliohjhemenmnlpbfagaolkdacoja >& /dev/null & disown'
alias perplexity='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=pdblnecalpedecgehiadglkhjcbjcfgj >& /dev/null & disown'

#typing trainers
alias keybr='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=pcklphganfmjgkefaemldhkgjhicbied >& /dev/null & disown'
alias monkeytype='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=picebhhlijnlefeleilfbanaghjlkkna >& /dev/null & disown'
alias typing='cd ~/Web-Apps/ && /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=eackldhhcebhekccmchaaiibklikhdpk >& /dev/null & disown'

