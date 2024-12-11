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
ansible-playbook -i localhost, -c local workstation.yml --ask-become-pass
```

### Install just one role

To run with just one role, you can modify the workstation.yml file or duplicate it.
The alter the duplicate to have only the roles you want to run.
On the command line specify the duplicate file name.

## Developer Information

How to do a dry run of the playbook

```shell
ansible-playbook -i localhost, -c local workstation.yml --check --ask-become-pass
```

- [How to test in a WSL2 instance](wsl2-testing.md)
- [How to test with a container](container.md)
