# How to test in a WSL2 instance

Create a new WSL2 instance of the White Water Foundry Fedora:

1. **Install WSL2**:
   Ensure you have WSL2 installed on your Windows machine. You can follow the official Microsoft documentation [here](https://docs.microsoft.com/en-us/windows/wsl/install).

2. **Download the Fedora Remix for WSL**:
   You can download the Fedora Remix for WSL from the Microsoft Store or from the White Water Foundry website.

3. **Install Fedora Remix for WSL**:
   Follow the installation instructions provided by White Water Foundry. Typically, you can install it directly from the Microsoft Store.

4. **Set up the WSL2 instance**:
   Once installed, you can set up your WSL2 instance by running the following command in PowerShell:

   ```powershell
   wsl --set-version <Distro> 2
   ```

5. **Launch Fedora Remix**:
   Open the Fedora Remix for WSL from your Start menu or by running the following command in PowerShell:

   ```powershell
   wsl -d <Distro>
   ```

6. **Update and upgrade packages**:
   Once inside the Fedora Remix terminal, update and upgrade your packages:

   ```powershell
   wsl --set-version <Distro> 2
   sudo dnf update -y
   sudo dnf upgrade -y
   ```

7. **Clone this repo**:
   Change into the cloned directory.

8. **Run your Ansible playbook**:
   You can now run your Ansible playbook as described in the [README.md](README.md).
