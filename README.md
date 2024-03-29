# Workplaces

Scripts to setup workplace (tools for frontend, DevOps development, etc).

## Developing, Testing, Running this repo

See details on installing and configuring prerequisites [here](/bootstrap/README.md).

See details about testing [here](tests/README.md).

Run playbooks locally (from a role's folder):
```bash
$ ansible-playbook -c local -i default, playbook.yml
```

## Workplaces

* [Frontend](frontend/README.md) (Tools for Angular development)
  
```
$ curl -s "https://raw.githubusercontent.com/rustamkulenov/workplace/master/frontend/setup.sh" | sudo bash -s
```

* [DevOps](devops/README.md) (Hasicorp's terraform, packer, AWS, Azure cli, etc)

```
$ curl -s "https://raw.githubusercontent.com/rustamkulenov/workplace/master/devops/setup.sh" | sudo bash -s
```