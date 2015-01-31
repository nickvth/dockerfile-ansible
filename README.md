# dockerfile-ansible

Tested with boot2docker on OSX and virtualbox with Centos
* boot2docker: http://boot2docker.io
* Centos: https://docs.docker.com/installation/centos/

With this docker image you can create a temporary container to run ansible(-playbook), after ansible is finished the container will be removed automatically. 

<b>Usage</b>

* Build
```
cd /tmp/
git clone https://github.com/nickvth/dockerfile-ansible.git 
cd dockerfile-ansible
docker build --force-rm=true --no-cache=true -t [username]/ansible .
```

* Create dir for ansible playbook and inventory file
```
# mkdir -p /mnt/ansible
```
* Create aliases on your linux based system and test ansible
```
# alias ansible='docker run -it --rm=true -v /mnt/ansible:/mnt [username]/ansible /usr/bin/ansible'
# ansible --version
# ansible --help
# ansible -i /mnt/hosts testansible -k -m setup 
# alias ansible-playbook='docker run -it --rm=true -v /mnt/ansible:/mnt [username]/ansible /usr/bin/ansible-playbook'
# ansible-playbook --version
# ansible-playbook --help
```

Set your alias in .bash_profile, so when you login the alias will be available
* OSX: http://www.maclife.com/article/columns/terminal_101_creating_aliases_commands
* Centos: http://shapeshed.com/using_aliases_in_the_linux_shell/

* You can also make changes on the ansible.cfg and rebuild image if you want.
