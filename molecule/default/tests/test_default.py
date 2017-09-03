import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_client(Command):
    assert Command('docker --version').rc == 0
    assert Command('python -c "import docker"').rc == 0
#    assert Command('docker ps').rc == 0


def test_service(Service):
    assert Service('docker').is_enabled
    assert Service('docker').is_running
