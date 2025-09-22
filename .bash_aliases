#System aliases
alias night-tmux='source tmux-session.sh'

alias lock='loginctl lock-session'

alias l1='ls -1'
alias sizeof='ls -lh'

copy() {
    $@ | xsel --input --clipboard
}
alias paste='xsel --output --clipboard'

alias battery-info='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
## ls aliases with eza
alias le='eza --color=always --tree --level=1 --git --icons=never'
alias ld='eza -D --color=always --tree --level=1'
alias lf='eza -f --color=always --tree --level=1 | grep -v /'
alias lh='eza -d .* --group-directories-first --color=always --tree --level=1'
alias ll='eza -a --group-directories-first --color=always --tree --level=1'

#text editing and display aliases
alias bat='batcat'
alias nano='nano -SEalZ --tabsize=4'

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
		le --tree --level=1
	else
		le --tree --level "$1"
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

rangercd () {
    tmp="$(mktemp)"
    ranger --choosedir="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
alias ranger="rangercd"
alias ra="ranger"

bgrun() {
	"$@" &> /dev/null & disown
}

alias backup='cp ~/.bash_aliases ~/Public/linux-backup/.bash_aliases; sleep 1; cp ~/.bashrc ~/Public/linux-backup/.bashrc; sleep 1; cp ~/.tmux.conf ~/Public/linux-backup/.tmux.conf; sleep 1; cp ~/.nano/.nanorc ~/Public/linux-backup/.nanorc;'

alias aliases='nano ~/.bash_aliases'

alias nanohelp='nano -v ~/Public/nano-cheet-sheet.txt'

alias note='nano ~/.notepad.txt'
alias cp-note='copy cat ~/.notepad.txt'

alias todo='bgrun xournalpp ~/doddle.xopp'
alias rough='bgrun xournalpp ~/Downloads/trash/rough.xopp'

#Phone apps aliases
alias phone='bgrun kdeconnect-app'

alias phnscr='bgrun scrcpy -SK'

#TimeZone Aliases
alias in-time='env TZ=Asia/Kolkata date'

convert_to_la_time() {
    input_time="$1"
    TZ="America/Los_Angeles" date -d "$(echo "$input_time" | sed 's/,//g')" +"%A, %Y-%m-%d %H:%M:%S %Z"
}

#KDE-connect aliases and functions
alias kde-dir='cd ~/Downloads/kde-connect'

alias kder='kdeconnect-cli --refresh'
alias kdels='kdeconnect-cli -l'
alias send='kdeconnect-cli -n Night-Fury --share'
alias sendtxt='kdeconnect-cli -n Night-Fury --share-text'

#docker-container aliases
docker-build() {
    docker build -t "$1":"$2" .
}
docker-run() {
    docker run --rm -it -v "$PWD":/work "$1":"$2" bash
}


#Git aliases
alias gits='git status'

create-repo() {
	git init -b main; sleep 1; git add .; sleep 1; git commit -m "Initial commit"; sleep 1; gh repo create;
}

push() {
	git add .; git commit -m "$@"; git push origin HEAD;
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
	if [ $# -eq 0 ]; then	
		source .venv/bin/activate
	else
		source ."$1"/bin/activate
	fi
}

alias py='python3'
alias py2='/usr/src/Python-2.7.18/python'
alias upip='uv pip'
alias upipl='uv pip list'
alias upipi='uv pip install'
alias upipi-req='uv pip install ipykernel nbformat pandas numpy matplotlib seaborn plotly scikit-learn'
alias upipir='uv pip install -r requirements.txt'
alias upipui='uv pip uninstall'
alias cr-ev='uv venv && source .venv/bin/activate'
alias build-req='uv pip freeze > requirements.txt'

#System Package manager

alias update='sudo -S nala upgrade -y; sleep 2; brew update; sleep 2; brew upgrade;'
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

#EC2 SSH Connection
alias ec2-connect='cd /home/rahul/usc/spring25/551 && ssh -i "551-demo-server.pem" ubuntu@ec2-18-220-217-74.us-east-2.compute.amazonaws.com && cd -'
alias scp-get='scp -i /home/rahul/usc/spring25/551/551-demo-server.pem ubuntu@18.220.217.74:'
alias sftp-connect='sftp -i /home/rahul/usc/spring25/551/551-demo-server.pem ubuntu@18.220.217.74'

#Deb and System Apps

alias files='bgrun dolphin .'
alias monitor='bgrun plasma-systemmonitor'
alias notepad='bgrun kwrite'
alias calculator='bgrun gnome-calculator'

alias discord='bgrun discord' alias r-studio='bgrun rstudio' alias spotify='bgrun spotify'

alias matlab='cd /usr/local/MATLAB/R2023b/bin && bgrun ./matlab' alias arduino='cd /home/rahul/Downloads/installation-zips/arduino/arduino-ide_2.3.1_Linux_64bit && bgrun ./arduino-ide'

#Flatpak Apps

alias timer='bgrun flatpak run com.github.vikdevelop.timer'
#alias spotify='flatpak run com.spotify.Client >& /dev/null &'
alias telegram='bgrun flatpak run org.telegram.desktop'

#Web-Apps startup aliases

#chrome
alias meet='cd ~/Web-Apps/ && bgrun /opt/google/chrome/google-chrome --profile-directory=Default --app-id=kjgfgldnnfoeklkmfkjfagphfepbbdan && cd -'

#brave
alias brave='bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default'
alias incognito='bgrun /opt/brave.com/brave/brave-browser --incognito --profile-directory=Default; clear;'

#miscellaneous
alias yocket='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=anmfafpacpnoaapbflkakhcklbhmfiko && cd -'
alias maps='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mnhkaebcjjhencmpkapnbdaogjamfbcj && cd -'

#productivity
alias mail='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=fmgjjmmmlfnkbppncabfkddbjimcfncm && cd -'
alias messages='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hpfldicfbfomlpcikngkocigghgafkph && cd -'
alias tasks='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=kjbdgfilnfhdoflbpgamdcdgpehopbep && cd -'
alias outlook='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=pkooggnaalmfkidjmlhoelhdllpphaga && cd -'
alias notion='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=pkommfnfmimkpceplljipijnpmmdkngb && cd -'
alias notion-caledar='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gfjiemlnmgajmgihefeppogphdpjchab && cd -'
alias linkedin='cd ~/Web-Apps/ && bgrun bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=ohghonlafcimfigiajnmhdklcbjlbfda && cd -'

#social
alias snapchat='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gfgbgjphjkdhefmnmbhogcpckgpapbag && cd -'
alias whatsapp='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm && cd -'
alias insta='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=akpamiohjfcnimfljfndmaldlcfphjmp && cd -'
alias redit='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=lgnggepjiihbfdbedefdhcffnmhcahbm && cd -'
alias whatsapp2='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser "--profile-directory=Profile 1" --app-id=hnpfjngllnobngcgfapefoaidbinmjnm && cd -'

#streaming
alias youtube='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=agimnkijcaahngcdmfeangaknmldooml && cd -'
alias aniwatch='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gbcghhelnehjmfhjfiinjbnkdnkigojc && cd -'
alias mangareader='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mkncjdlcffgkpmbakeljipclhccmfbem && cd -'
alias netflix='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=eppojlglocelodeimnohnlnionkobfln && cd -'

#clg-and-stuff
alias keep='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=eilembjdkfgodjkcjnpgpaenohkicgjd && cd -'
alias medium='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=hhfiljfkackbfbokpmngfpjffnlmjljd && cd -'
alias docs='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mpnpojknpmmopombnjdcgaaiekajbnjb && cd -'
alias sheets='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=fhihpiojkbmbpdjeoajapmgkhlnakfjf && cd -'
alias slides='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=kefjledonklijopmnomlcbpllchaibag && cd -'
alias overleaf='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gjoaplgcpnmemdaklplebdapjihcoibe && cd -'

alias brightspace='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=cljkckhjkffenmligdjbfiaeocbaakkb && cd -'
alias den='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=kpdiaaimphdbabibamgldhbdgjmhcdka && cd -'

alias piazza='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=nmiaapodcodgpmidjlhbphjfmnaeckko && cd -'

alias github='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=mjoklplbddabcmpepnokjaffbmgbkkgg && cd -'

#chatbots
alias poe='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gabodgbmieebkjkpdlfnnfbjldgadkpg && cd -'
alias chatpdf='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=njjkbemknbnbclmeofbfocleneggdedh && cd -'
alias chatgpt='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=cadlkienfkclaiaibeoongdcgmdikeeg && cd -'
alias forefront='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=ljpmdjicnimmogcbnnlgemfkocmpcikp && cd -'
alias gemini='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=kmgjpmooafofajbflkcdkffkakkmcmne && cd -'
alias claude='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=fmpnliohjhemenmnlpbfagaolkdacoja && cd -'
alias perplexity='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=lnlpinjmddpgbambkfjpbkoigmgcdjjm && cd -'
alias notebooklm='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=gjcmcplpgihbecacndmmbaenpfgimlec && cd -'

#typing trainers
alias keybr='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=pcklphganfmjgkefaemldhkgjhicbied && cd -'
alias monkeytype='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=picebhhlijnlefeleilfbanaghjlkkna && cd -'
alias typing='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=eackldhhcebhekccmchaaiibklikhdpk && cd -'

#genshin impact
alias genshin-map='cd ~/Web-Apps/ && bgrun /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=clmnfgjofoklpfoopakeopffeehichim && cd -'
