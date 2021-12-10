# Tests

The provisioning was tested on the following boxes:

| OS    | Success   |
|-      |-          |
| [Ubuntu 18.04 LTS](Ubuntu%2018.04%20LTS/Vagrantfile)  | Y |
| [Ubuntu 20.04 LTS](Ubuntu%2020.04%20LTS/Vagrantfile)  | Y |

## How to run tests

1. Install [prerequisites](../bootstrap/README.md)
2. Go into corresponging subfolder (e.g. "Ubuntu 18.04 LTS")
3. Run ```vagrant up``` to download and provision a VM
4. Run ```vagrant destroy``` to destroy the VM