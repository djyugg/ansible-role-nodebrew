nodebrew
=========
[![Build Status](https://travis-ci.org/djyugg/ansible-role-nodebrew.svg?branch=master)](https://travis-ci.org/djyugg/ansible-role-nodebrew)  
install nodebrew and node.js.

Role Variables
--------------
- `nodebrew_nodejs_version`: install node.js version. (default: v0.12.7)
- `nodebrew_install_user`: nodebrew install user. (default: vagrant) 
- `nodebrew_npm_update`: update npm. (default: False) 

Example Playbook
----------------

    - hosts: servers
      vars:
        nodebrew_nodejs_version: v0.10.25
        nodebrew_install_user: vagrant
        nodebrew_npm_update: True
      roles:
         - role: djyugg.nodebrew

License
-------

MIT
