# Bash-profile

First of all, take into account that **[Fish](https://fishshell.com/)** is my default shell.

Maybe you need to hack some alias to make it works correctly in bash or other shells.

## Index

### 1. FOLDERS

* **mkdir**:    Preferred 'mkdir' implementation
* **ll**:     Preferred 'ls' implementation
* **..**:       Go back 1 directory level
* **.2**:       Go back 2 directory levels
* **.3**:       Go back 3 directory levels
* **.4**:       Go back 4 directory levels
* **.5**:       Go back 5 directory levels
* **.6**:       Go back 6 directory levels

### 2. GIT

* **gcheck**:       Code sniffer check for git staged files
* **gfix**:         Code sniffer automatic fix for git staged files
* **ccheck**:       Code sniffer check for file/folder
* **cfix**:         Code sniffer automatic fix for file/folder
* **gck**:          Git checkout
* **develop**:      Checkout last development version
* **master**:       Checkout last master version
* **branches**:     List local branches
* **gcb**:          Removes all local branches fully merged in origin
* **grb**:          Forces branch deletion
* **newbranch**:    Create a new branch from the last development version and pushes it to origin
* **glog**:         Git log in a pretty way

###   3. UTILS

* **fsource**:  Reload fish configuration
* **ttop**:     'top' invocation to minimize resources

###   4. NETWORKING

* **myip**:         Public facing IP Address
* **netCons**:      Show all open TCP/IP sockets
* **flushDNS**:     Flush out the DNS Cache
* **lsock**:        Display open sockets
* **lsockU**:       Display only open UDP sockets
* **lsockT**:       Display only open TCP sockets
* **ipInfo0**:      Get info on connections for en0
* **ipInfo1**:      Get info on connections for en1
* **openPorts**:    All listening connections
* **showBlocked**:  All ipfw rules inc/ blocked IPs

###   5. WEB DEVELOPMENT

* **apacheEdit**:       Edit httpd.conf
* **apacheRestart**:    Restart Apache
* **editHosts**:        Edit /etc/hosts file
* **herr**:             Tails HTTP error logs
* **Apachelogs**:   Shows apache error logs