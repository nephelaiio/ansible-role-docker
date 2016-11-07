from testinfra.utils.ansible_runner import AnsibleRunner


testinfra_hosts = \
    AnsibleRunner('.molecule/ansible_inventory').get_hosts('test')


def test_command(Command):
    assert Command('docker --version').rc == 0
    assert Command('python -c "import docker"').rc == 0
