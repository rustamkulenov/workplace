# Bootstrap

## Install required tools.

The following tools are required/used to develop, test, run this repo:

|Tool               | Version used|
|--                 |--|
| Ubuntu            | 20.04.3 LTS |
| git               | 2.25.1 |
| ansible           | 2.11.7 |
| ansible-playbook  | 2.11.7 |
| vagrant           | 2.2.19 |
| VBoxManage        | 6.1.26_Ubuntur145957 |
| test-kitchen      | ... |

## Vagrant

Check Vagrant config:
```bash
$ echo $VAGRANT_HOME
```

Optionally change location of Vagrant boxes.
By default Vagrant stores boxes being downloaded here:

~/.vagrant.d/tmp

and downloaded boxes here:

~/.vagrant.d/boxes

To change this set [VAGRANT_HOME](https://www.vagrantup.com/docs/other/environmental-variables#vagrant_home) env variable to corresponding folder.

It may be also required to install bsdtar if you see an error regarding it:
```bash
$ sudo apt install libarchive-tools
```

## VBox

Check VBox config:
```bash
$ grep defaultMachineFolder  ~/.config/VirtualBox/VirtualBox.xml
```

Optionally change [VBox images location](https://docs.oracle.com/en/virtualization/virtualbox/6.0/admin/vboxconfigdata.html) via VBoxManage or UI.
