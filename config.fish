#   ---------------------------
#   1. FOLDERS
#   ---------------------------

alias mkdir 'mkdir -pv'                     # mkdir:    Preferred 'mkdir' implementation
alias ll 'ls -FGlAhp'                       # ll:       Preferred 'ls' implementation
alias .. 'cd ../'                           # ..:       Go back 1 directory level
alias .2 'cd ../../'                        # .2:       Go back 2 directory levels
alias .3 'cd ../../../'                     # .3:       Go back 3 directory levels
alias .4 'cd ../../../../'                  # .4:       Go back 4 directory levels
alias .5 'cd ../../../../../'               # .5:       Go back 5 directory levels
alias .6 'cd ../../../../../../'            # .6:       Go back 6 directory levels

#   ---------------------------
#   2. GIT
#   ---------------------------

alias gcheck    'git diff --name-only --diff-filter=AM | xargs phpcs --standard=/var/www/rulesets/own-ruleset.xml'                                  # gcheck:       Code sniffer check for git staged files
alias gfix      'git diff --name-only --diff-filter=AM | xargs phpcbf --standard=/var/www/rulesets/own-ruleset.xml'                                 # gfix:         Code sniffer automatic fix for git staged files
alias ccheck    'phpcs --standard=/var/www/rulesets/own-ruleset.xml'                                                                                # ccheck:       Code sniffer check for file/folder
alias cfix      'phpcbf --standard=/var/www/rulesets/own-ruleset.xml'                                                                               # cfix:         Code sniffer automatic fix for file/folder
alias gck       'git checkout'                                                                                                                      # gck:          Git checkout
alias develop   'git checkout development; git fetch --all --prune; git pull; clear'                                                                # develop:      Checkout last development version
alias master    'git checkout master; git fetch --all --prune; git pull; clear'                                                                     # master:       Checkout last master version
alias branches  'git branch'                                                                                                                        # branches:     List local branches
alias gcb       'git fetch --all --prune; git pull; git branch --merged | egrep -v '(^\\*|master|development)' | xargs git branch -d'               # gcb:          Removes all local branches fully merged in origin
alias grb       'git branch -D'                                                                                                                     # grb:          Forces branch deletion
alias newbranch 'git checkout development; git fetch --all --prune; git pull; git checkout -b $argv[1]; git push --set-upstream origin $argv[1];'   # newbranch:    Create a new branch from the last development version and pushes it to origin
alias glog      'git log --pretty="%C(Yellow)%h  %C(reset)%ad (%C(Green)%cr%C(reset))%x09 %C(Cyan)%an: %C(reset)%s" -n 15 --cherry-mark'            # glog:         Git log in a pretty way

#   ---------------------------
#   3. UTILS
#   ---------------------------

alias fsource   '. ~/.config/fish/config.fish'  # fsource:  Reload fish configuration
alias ttop      'top -R -F -s 10 -o rsize'      # ttop:     'top' invocation to minimize resources

#   ---------------------------
#   4. NETWORKING
#   ---------------------------

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ---------------------------------------
#   5. WEB DEVELOPMENT
#   ---------------------------------------

alias apacheEdit='sudo nano /etc/httpd/httpd.conf'      # apacheEdit:       Edit httpd.conf
alias apacheRestart='sudo apachectl graceful'           # apacheRestart:    Restart Apache
alias editHosts='sudo nano /etc/hosts'                  # editHosts:        Edit /etc/hosts file
alias herr='tail /var/log/httpd/error_log'              # herr:             Tails HTTP error logs
alias apacheLogs="less +F /var/log/apache2/error_log"   # Apachelogs:   Shows apache error logs