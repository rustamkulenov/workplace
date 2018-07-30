#!/bin/sh

cd $(mktemp -d)
git clone https://rkulenov@bitbucket.org/rkulenov/workplace.git
cd workplace
ansible-playbook frontend/angular/playbook.yml -i localhost.inv - c local