from testinfra.utils.ansible_runner import AnsibleRunner


testinfra_hosts = \
    AnsibleRunner('.molecule/ansible_inventory').get_hosts('test')


def test_client(Command):
    assert Command('docker --version').rc == 0
    assert Command('python -c "import docker"').rc == 0
    assert Command('docker ps').rc == 0


def test_service(Service):
    assert Service('docker').is_running
