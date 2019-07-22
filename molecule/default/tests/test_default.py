import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_client(host):
    assert host.command('docker --version').rc == 0
    assert host.command('python -c "import docker"').rc == 0


def test_service(host):
    assert host.service('docker').is_enabled
    assert host.service('docker').is_running
