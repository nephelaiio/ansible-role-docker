# nephelaiio.docker

[![Build Status](https://github.com/nephelaiio/ansible-role-docker/workflows/molecule.yml/badge.svg)](https://github.com/nephelaiio/ansible-role-docker/actions/worfklows/molecule.yml) [![Build Status](https://github.com/nephelaiio/ansible-role-docker/workflows/install/badge.svg)](https://github.com/nephelaiio/ansible-role-docker/actions/workflows/install.yml) [![Build Status](https://github.com/nephelaiio/ansible-role-docker/workflows/release/badge.svg)](https://github.com/nephelaiio/ansible-role-docker/actions/workflows/release.yml)
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-nephelaiio.docker-blue.svg)](https://galaxy.ansible.com/ui/standalone/roles/nephelaiio/docker)

An [ansible role](https://galaxy.ansible.com/ui/standalone/roles/nephelaiio/docker) to install and configure [Docker](https://www.docker.com)

## Local install

Execute the following from the command line shell

```
curl -s https://raw.githubusercontent.com/nephelaiio/ansible-role-docker/master/install.sh | bash
```

## Role Variables

Please refer to the [defaults file](/defaults/main.yml) for an up to date list of input parameters.

## Example Playbook

```
- hosts: servers
  roles:
     - role: nephelaiio.docker
       docker_packages_state: latest
```

## Testing

Please make sure your environment has [docker](https://www.docker.com) installed in order to run role validation tests. Additional python dependencies are listed in the [requirements file](https://github.com/nephelaiio/ansible-role-requirements/blob/master/requirements.txt)

Role is tested against the following distributions (docker images):
  * Ubuntu Jammy
  * Ubuntu Focal
  * Debian Bookworm
  * Debian Bullseye
  * Rocky Linux 9

You can test the role directly from sources using command ` molecule test `

## License

This project is licensed under the terms of the [MIT License](/LICENSE)
