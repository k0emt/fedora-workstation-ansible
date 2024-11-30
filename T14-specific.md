# T14 Specific installation notes

These are notes for installing on a Lenovo ThinkPad T14 Gen 2a.

## microSD drive

- To get card reader working

  ```sh
  sudo modprobe -r rtsx_pci_sdmmc; sudo modprobe rtsx_pci_sdmmc
  ```

- Edit `/etc/default/grub` add: `GRUB_CMDLINE_LINUX="pcie_port_pm=off"`
- Then run: `sudo grub2-mkconfig -o /boot/grub2/grub.cfg`
- reboot
