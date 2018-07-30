#!/bin/sh

cd $(mktemp -d)
git clone git@bitbucket.org:rkulenov/workplace.git
cd workplace
ansible-playbook frontend/angular/playbook.yml -i localhost.inv - c local