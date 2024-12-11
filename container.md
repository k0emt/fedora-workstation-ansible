# Testing with a container

1. Build the docker image:

```sh
podman build -t ansible-test .
```

1. Connect interactively to the base ansible-test container to inspect it:

```sh
podman run -it --rm ansible-test
```

1. Open the container and run the playbook:

```sh
podman run -it ansible-test ansible-playbook -i localhost, -c local --ask-become-pass workstation.yml
```

1. OPTIONAL Run the container: Mount your playbook directory into the container and run Ansible.

```sh
podman run -it -v $(pwd):/ansible:Z -w /ansible ansible-test ansible-playbook -i localhost, -c local --ask-become-pass workstation.yml
```
