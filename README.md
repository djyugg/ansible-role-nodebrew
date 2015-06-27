nodebrew
=========

install nodebrew and node.js.

Role Variables
--------------
- `nodebrew.nodejs_version`: install node.js version. (default: v0.10.25)
- `nodebrew.install_user`: nodebrew install user. (default: vagrant) 

Example Playbook
----------------

    - hosts: servers
      vars:
        nodebrew:
          nodejs_version: v0.10.25
          install_user: vagrant
      roles:
         - role: djyugg.nodebrew

License
-------

MIT
