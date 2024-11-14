# Fedora Workstation Ansible

This project contains ansible resources for setting up a new Fedora workstation.

Roles that will be created include: power user, developer, and AI researcher.

## Project Structure

```markdown
fedora-workstation-ansible/
├── README.md
├── workstation.yml
└── roles/
    ├── power_user/
    │   ├── tasks/
    │   │   └── main.yml
    ├── developer/
    │   ├── tasks/
    │   │   └── main.yml
    ├── database_engineer/
    │   ├── tasks/
    │   │   └── main.yml
    └── ai_researcher/
        ├── tasks/
        │   └── main.yml
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
