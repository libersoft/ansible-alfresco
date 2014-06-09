# ansible-alfresco

[Ansible](http://www.ansible.com/home) playbook to deploy an allinone rpm-based machine alfresco community environment. Based on a 1524MB RAM (and relative JAVA_OPTS tuning) CentOS 6.4 [minimal vagrant box](https://github.com/2creatives/vagrant-centos/releases/tag/v6.5.1) and packed with following components:

*   Some prerequisites and utilities (wget, unzip, libselinux-python, python-psycopg2, MySQL-python, vim, byobu)
*   Oracle Java JDK 7 from Oracle website
*   Apache Tomcat 7 from Tomcat website
*   PostgreSql 9 from PostgreSql official rpm repo / Mysql 5 from Mysql official repo and Mysql-connector-java
*   ImageMagick from distro repo
*   FFmpeg from atrpms repo
*   Libreoffice from distro repo
*   SWFTools from rpmforge repo
*   Alfresco Community 4.2 Repository from Alfresco website
*   Alfresco Community 4.2 Share from Alfresco website

Especially useful for virtual development environment, maybe using [Vagrant](http://www.vagrantup.com/).

## Configuration

Configuration variables are in `group_vars/all`. You can adjust default values to your need, especially versions, username/password and JAVA_OPTS.

## Installation

    $ git clone https://github.com/libersoft/ansible-alfresco.git ansible-alfresco

## Usage


### Plain Ansible

    $ cd ansible-alfresco/provisioning
    $ ansible-playbook [target] site.yml

Point your browser to `http://{{ target_ip }}:8080/share`

*   user:admin
*   password:admin

### Vagrant

    $ cd ansible-alfresco
    $ vagrant up
    $ vagrant provision
    
Point your browser to `http://127.0.0.1:58080/share`

*   user:admin
*   password:admin

## Status

Currently in testing.

## Future improvements

*   ~~Include Apache Solr~~
*   Apt-based distro compatibility
*   Some refactoring (conditionals, variables, tags, users)
*   Multi machine environment
*   SSL enabled version

Feel free to contribute.

## License

[Gnu General Public License 3.0](https://www.gnu.org/licenses/gpl.html)

## Credits
*   [Step by step installation of Alfresco Community 4.2.c on Ubuntu 12.04 LTS minimal 64bit… please, no bundle!](http://fcorti.com/2013/01/09/installation-alfresco-4-2-c-on-ubuntu/)
*   [vagrant-centos](https://github.com/2creatives/vagrant-centos)
*   [vagrant-alfresco](https://github.com/maoo/vagrant-alfresco)
*   [chef-alfresco](https://github.com/maoo/chef-alfresco)
