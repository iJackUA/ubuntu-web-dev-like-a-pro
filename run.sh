#!/bin/bash
FOLDER="~/ubuntu-web-dev-like-a-pro"
ANSIBLE_COMMAND="ansible-playbook $FOLDER/main.yml --ask-sudo-pass"

provistext="
======================================================================
Customize playbooks and run provisioning with the following command :
$> $FOLDER/run.sh install  [DO NOT WORK AT THE MOMENT. USE MANUAL METHOD BELOW]
or (if you are a cool one ;)) directly execure Ansible playbook
$> $ANSIBLE_COMMAND
Warning! If you run 'ansible-playbook' manually. Run it from the user you want to provision. NOT as sudo, script will ask sudo pass when needed !
======================================================================"

warningtext="
======================================================================
WARNING!
Use it on your own risk.
Scripts are making manipulation with your system files and
could cause data loss and OS failure.
======================================================================"

echo $warningtext

case "$1" in
        prepare)
            echo "Install Ansbile"
            sudo add-apt-repository ppa:rquillo/ansible
            sudo apt-get update -y
            sudo apt-get install ansible -y
            echo "Install GIT"
            sudo apt-get install git -y
            echo "Clone ubuntu-web-dev-like-a-pro"
            git clone https://github.com/iJackUA/ubuntu-web-dev-like-a-pro ~/ubuntu-web-dev-like-a-pro
            echo "DONE! All required soft is preinstalled"
            echo "$provistext"
            ;;

        update)
            echo "Update git repo with Ansible scripts"
            git pull
            echo "DONE! Scripts updated"
            echo "$provistext"
            ;;

        install)
            echo "Starting Ansible provisioning"
            $ANSIBLE_COMMAND
            ;;

        *)
            echo "Usage: $0 {prepare|update|install}"
            echo "prepare - install Git, clone repo with scripts, installs Ansible"
            echo "update - literally perform 'git pull' for prepared repo, to get latets scripts"
            echo "install - start Ansible provisioning"
            exit 1
esac
