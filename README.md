# nephelaiio.docker

[![Build Status](https://travis-ci.org/nephelaiio/ansible-role-docker.svg?branch=master)](https://travis-ci.org/nephelaiio/ansible-role-docker)
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-systemd--service-blue.svg)](https://galaxy.ansible.com/nephelaiio/docker/)

An [ansible role](https://galaxy.ansible.com/nephelaiio/docker) to install and configure [Docker](https://www.docker.com)

# Role Variables

Please refer to the [defaults file](/defaults/main.yml) for an up to date list of input parameters.

# Example Playbook

- hosts: servers
  roles:
     - role: docker
       docker_packages_state: latest

# Testing

Please make sure your environment has [docker](https://www.docker.com) installed in order to run role validation tests. Additional python dependencies are listed in the [requirements file](/requirements.txt)

Role is tested against the following distributions (docker images):
  * Ubuntu Xenial
  * CentOS 7
  * Debian Stretch
  * Arch Linux

You can test the role from sources using the command line using ` molecule test `

# License

This project is licensed under the terms of the [MIT License](/LICENSE)
