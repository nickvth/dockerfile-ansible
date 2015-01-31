# dockerfile-ansible

Tested with boot2docker on OSX and virtualbox with Centos
* boot2docker: http://boot2docker.io
* Centos: https://docs.docker.com/installation/centos/
<b>Usage</b>

<pre>
cd /tmp/
git clone https://github.com/nickvth/dockerfile-ansible.git 
cd dockerfile-ansible
docker build --force-rm=true --no-cache=true -t [username]/ansible .
</pre>

Create aliases on your linux based system and test ansible
<pre>
# alias ansible='docker run --rm=true --name=ansible [username]/ansible /usr/bin/ansible'
# ansible --version
# alias ansible-playbook='docker run --rm=true --name=ansible [username]/ansible /usr/bin/ansible-playbook'
# ansible-playbook --version
</pre>

Set your alias in .bash_profile, so when you login the alias will be available.
* OSX: http://www.maclife.com/article/columns/terminal_101_creating_aliases_commands
* Centos: http://shapeshed.com/using_aliases_in_the_linux_shell/

<b>If you want to add an ansible.cfg file then add that to the Dockerfile</b>

* place ansible.cfg in the build dir
* vi Dockerfile and add:
<pre>
ADD ansible.cfg /etc/ansible.cfg
</pre>
* build new image see command above.
