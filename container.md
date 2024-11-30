# Testing with a container

1. Build the docker image:

```sh
podman build -t ansible-test .
```

1. Run the container: Mount your playbook directory into the container and run Ansible.

```sh
podman run --rm -v $(pwd):/ansible:Z -w /ansible ansible-test ansible-playbook -i localhost, -c local  workstation.yml
```

1. Connect interactively to the container:

```sh
podman exec -it ansible-test /usr/bin/zsh
```
