# Fedora Workstation Ansible

This project contains ansible resources for setting up a new Fedora workstation.

Roles that will be created include: ai_researcher, database_engineer, developer, git_user, power_user

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

## Running the playbook

To run the playbook on your local workstation, use the following command:

```shell
ansible-playbook -i localhost, -c local workstation.yml
```

### Install just one role

Here is an example of how to use ansible to install just one role on your local workstation:

```shell
ansible-playbook -i localhost, -c local -t power_user workstation.yml
```

## Developer Information

How to do a dry run of the playbook

```shell
ansible-playbook -i localhost, -c local workstation.yml --check
```

- [How to test in a WSL2 instance](wsl2-testing.md)
- [How to test with a container](container.md)
