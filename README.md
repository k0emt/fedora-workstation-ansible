# Fedora Workstation Ansible

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)

This project contains ansible resources for setting up a new Fedora workstation.

Roles that will be created include: ai_researcher, database_engineer, developer, git_user, power_user, amateur_radio

## Project Structure

```markdown
fedora-workstation-ansible/
├── README.md
├── workstation.yml
└── roles/
    ├── role_name/
    │   ├── tasks/
    │   │   └── main.yml
    ...
```

## Initial bootstrap

How to do the initial bootstrap of getting ansible on the system:

```shell
sudo dnf install ansible
```

## Running the playbooks

To run the playbook on your local workstation, use the following command:

```shell
ansible-playbook -i localhost, -c local workstation.yml --ask-become-pass -u YOUR_USERNAME
```

For developer packages only:

```shell
ansible-playbook -i localhost, -c local developer.yml --ask-become-pass -u YOUR_USERNAME
```

### Install just one role

To run with just one role, you can modify the workstation.yml file or duplicate it.
Alter the duplicated file to have only the roles you want to run.
On the command line specify the new file name.

## Developer Information

How to do a dry run of the playbook

```shell
ansible-playbook -i localhost, -c local workstation.yml --check --ask-become-pass -u YOUR_USERNAME
```

- [How to test in a WSL2 instance](wsl2-testing.md)
- [How to test with a container](container.md)

## Not Implemented

Tools, etc not installed:

- app_user: slack, discord, zoom, edge
- power_user: iosevka font, run `p10k configure` post install
- developer: AWS CLI
- developer: nvm - node version manager and a version of node
- ai: TensorFlow as it should really be [installed in a virtual environment](https://idroot.us/install-tensorflow-fedora-41/).
- db: [pgadmin4](https://www.pgadmin.org/download/pgadmin-4-rpm/)
- db: [mongodb mongosh]( https://idroot.us/install-mongodb-fedora-41/)
- db: [dBeaver]( https://dbeaver.io/download/)
