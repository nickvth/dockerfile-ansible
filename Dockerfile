# Get latest centos7.x image from official centos docker repo.
FROM centos:centos7

# Set Maintainer of this Dockerfile.
MAINTAINER nickvth

# Update os to the latest version.
RUN yum -y update

# Install needed packages.
RUN yum -y install http://mirror.proserve.nl/fedora-epel/7/x86_64/e/epel-release-7-5.noarch.rpm 
RUN yum -y install ansible openssh openssh-clients sshpass
RUN mkdir /root/.ssh && chown 640 /root/.ssh
ADD ansible.cfg /etc/ansible/ansible.cfg

CMD ["ssh-agent bash && ssh-add /root/.ssh/id_rsa "]
