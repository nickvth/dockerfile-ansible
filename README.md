# dockerfile-ansible

<b>Usage</b>

<pre>
cd /tmp/
git clone https://github.com/nickvth/dockerfile-ansible.git 
cd dockerfile-ansible
docker build --force-rm=true --no-cache=true -t [username]/ansible .
</pre>

Create aliases on your linux system and test ansible
<pre>
# alias ansible='docker run --rm=true --name=ansible [username]/ansible /usr/bin/ansible'
# ansible --version
# alias ansible-playbook='docker run --rm=true --name=ansible [username]/ansible /usr/bin/ansible-playbook'
# ansible-playbook --version
</pre>

<b>If you want to add an ansible.cfg file then add that to the Dockerfile</b>

* place ansible.cfg in the build dir

* vi Dockerfile and add:
<pre>
ADD ansible.cfg /etc/ansible.cfg
</pre>
* build new image see command above.
