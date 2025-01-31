# Fedora Workstation Ansible

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)

This project contains ansible resources for setting up a new Fedora workstation.

The following roles will be set up, with descriptions providing a minimum of what will be installed:

- [Git User](roles/git_user/tasks/main.yml): git, gitk, git-gui, user configuration
- [SSH User](roles/ssh_user/tasks/main.yml): Creates a bunch of [ssh keys for you](roles/ssh_user/vars/main.yml) to use.  Optional system variable for if you want to register keys.  **Key management is left to you.**
- [Power User](roles/power_user/):
  - [zsh tasks](roles/power_user/tasks/zsh.yml): zsh, oh-my-zsh, extensions, powerlevel10k, plugins
  - numerous [command line tools](roles/power_user/vars/main.yml)
    - bat, eza, fzf, mc, tldr, tmux, tree, vim, wget
  - [system information, monitoring, and performance tools](roles/power_user/vars/main.yml)
    - fastfetch, process, i/o, and GPU monitoring
  - [.vimrc file](static-content/vimrc)
  - [IOSevka fonts](roles/power_user/tasks/iosevka-font.yml) for terminals
- [App User](roles/app_user/tasks/main.yml): audio and video redcording, email
  - [Wallpapers](Wallpapers)
- [Amateur Radio](roles/amateur_radio/tasks/main.yml): QRQ, OpenSCAD, kiCAD, Ngspice, SDR software
- [Developer](roles/developer/tasks/main.yml): gcc, python3, go lang, elixir, ruby, podman, VS Code, gitnuro
- [AI researcher](roles/ai_researcher/tasks/main.yml): numpy, pandas, scikit-learn, keras, matplotlib, ggplot, bokeh
- [Database Engineer](roles/database_engineer/tasks/main.yml): pgcli, pgadmin4-desktop, valkey, valkey-doc
- [Communicator](roles/communicator/tasks/main.yml): Slack, Discord, Zoom, Edge

## Project Structure

```markdown
fedora-workstation-ansible/
├── README.md
├── workstation.yml
└── roles/
    ├── role_name/
    │   ├── handlers/
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

- Clone the repo onto your computer.
- It is fine to use https at this point.
- Change into the cloned directory.
- To run the playbook on your local workstation, use the following command:

```shell
ansible-playbook -i localhost, -c local workstation.yml --ask-become-pass
```

### Gotchas

If you have already enrolled a fingerprint,
this is likely to block the playbook from properly running.
It can get stuck at gathering facts.
_Delete enrolled fingerprints and try to run again._

If there is a failure downloading during a task, simply run the playbook again.

### Install Custom roles

To run with selected roles, you can modify the `workstation.yml` file or duplicate it.
Alter the duplicated file to have only the roles you want to run.
You can do this by adding a \# before the role name.
On the command line specify the new file name instead of `workstation.yml`

## Post install

Run `p10k configure` in a new terminal if you aren't prompted to set up powerlevel 10K.

[Set up TensorFlow in virtual environment](https://idroot.us/install-tensorflow-fedora-41/).

The client tool for postgresql is installed.
However, you will need to [install the postgresql server](https://docs.fedoraproject.org/en-US/quick-docs/postgresql/) if you want a local server.

Install [nvm](https://github.com/nvm-sh/nvm) and a version of node.

Install [mongodb mongosh]( https://idroot.us/install-mongodb-fedora-41/)

Install [dBeaver]( https://dbeaver.io/download/)

Install [AWS CLI]( https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

## Developer Information

How to do a dry run of the playbook

```shell
ansible-playbook -i localhost, -c local workstation.yml --check --ask-become-pass
```

### Testing with WSL2 or a container

- [How to test in a WSL2 instance](wsl2-testing.md)
- [How to test with a container](container.md) _not functional_

### Testing using Virtualization

You can use Boxes on a Fedora Workstation.
Or if you have a Windows Pro OS you can use Hyper-V.
Create a VM with a clean instance of Fedora Workstation.
To test your changes, clone down your forked repo.
Switch to the appropriate branch and test installing

