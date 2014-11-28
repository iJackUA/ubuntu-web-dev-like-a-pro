Ubuntu Web Dev Like a Pro
=========================

Ansible playbook for a quick and effortless installation of all essential and often used software for a web development (mostrly for PHP and Ruby dev).
Clean and easy to customize for your needs.

## Supported OS:

* Ubuntu 14.04+ based x86_64 (64bit) OS only !

## Quick start

* `curl -s https://raw.githubusercontent.com/iJackUA/ubuntu-web-dev-like-a-pro/master/run.sh | bash /dev/stdin prepare`
* **Check the `main.yml` file to see what will be installed. Check/modify version numbers and included roles**
* `ansible-playbook ~/ubuntu-web-dev-like-a-pro/main.yml --ask-sudo-pass`

## Notice! Nothing is guaranteed! Use it on your own risk! 

Check and customize scripts before running installation. In case of errors in script it could damage your OS (but I tried to use as unobtrusive and as safe installation ways as possible).


## What`s inside :

### IDE

- [x] PhpStorm
- [x] PyCharm 
- [x] RubyMine (very easy to add any other JetBrains IDE by example)
- [x] Atom
- [x] Brakets
- [x] Sublime Text 3


### Browsers

- [x] Chrome
- [x] Chromium
- [x] Firefox
- [x] Opera

### WebDev essentials

- [x] LAMP (Apache2, PHP 5.6, MySQL 5.6)
- [x] Composer
- [x] Adminer
- [x] Node.JS
- [x] Ruby (rbenv, rbenv-build, Ruby 2.0.*) 
- [x] SASS / LESS compilers

### WebDev Tools

- [x] Virtualbox
- [x] Vagrant
- [x] MySQL Workbench
- [x] 0xDBE
- [x] RoboMongo
- [x] Meld diff rool
- [x] Wireshark
- [x] Gcolor2
- [x] GitEye

### System essentials

- [x] Restricted extras
- [x] Nvidia drivers
- [x] Java 7
- [x] Gdebi
- [x] Wine
- [x] Synapse
- [x] Disks
- [x] git
- [x] htop
- [x] dconf-tools
- [x] Terminator
- [x] Terra
- [x] ZSH
- [x] Oh-my-ZSH

### System general usage

- [x] LibreOffice
- [x] Skype
- [x] Thunderbird
- [x] Dropbox
- [x] Deluge
- [x] TeamViewer
- [x] Filezilla
- [x] KeepassX

### Trackers

- [x] Elance (Adobe Air)
- [x] oDesk

### Media

#### Video

- [x] VLC
- [x] HandBrake

#### Audio

- [x] Clementine
- [x] Deadbeef

#### Recorders

- [x] Audiorecorder
- [x] SimpleScreenRecorder
- [x] Vokoscreen
- [x] Shutter

#### Viewers/Readers

- [x] CoolReader
- [x] gthumb

### Tweaks

- [x] Ubuntu Tweak
- [x] gnome-tweak-tool
- [x] Faenza/Faience Icons
- [x] Themes - Zukitwo
- [x] Fonts - Ubuntu, Input, Inconsolata, Droid
- [x] Auto-preset custom theme, font, icons
