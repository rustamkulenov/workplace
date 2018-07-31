#!/bin/sh

if ! [ -x "$(command -v ansible-playbook)" ]; then
  echo 'Error: ansible is not installed.' >&2
  exit 1
fi

MYTMPDIR=$(mktemp -d)
trap "rm -rf $MYTMPDIR" EXIT
cd $MYTMPDIR
git clone https://rkulenov@bitbucket.org/rkulenov/workplace.git
cd workplace
ansible-playbook frontend/angular/playbook.yml -i localhost.inv -c local