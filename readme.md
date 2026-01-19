QEMU Cyber Lab

A project containing scripts to setup a cybersecrity lab using QEMU KVM virtual machines and GPU Passthrough
---

## 🔧 Features

* Uses pacman (Arch Linux) to install necesarry components
* Guides user on how to isolate PCI components based on their hardware
* Enables and disables the required services
* Configures the necesarry environment on boot to properly initialize the virtual machines

---

##  Project Structure

```
qemu-cyber-lab/
│
├── startsystem.sh           # Starts the components on boot
├── install.sh               # Installs Packages and configures OS
├── README.md                 # Documentation
├── What-I-Learned            # Documentation


```

---

## 🚀 How to Use

1. Download or clone the repository:

   ```powershell
   git clone https://github.com/fpolakovic/qemu-cyber-lab.git
   ```
2. Navigate to the project folder:

   ```powershell
   cd qemu-cyber-lab
   ```
3. Run the install script as root:

   ```bash
  bash install.sh
   ```
4. run the startsystemscript after reboot
   ```bash
  sudo startsystem.sh
   ```

> **Note:** Some sections require admin rights and may modify system configuration.

---

## 📝 What These Scripts Do

### Configures and installs QEMU/KVM with pacman and systemd


### establishes the correct environment after the user boots the machine





---

## Skills Demonstrated

* Bash scripting
* Successful configuration of libvirt, QEMU
* Linux Systems administration with systemd
* COnfiguring GPU isolation and passthrough in a Linux host

---


