
#force root

if [[ $(/usr/bin/id -u) -ne 0 ]]; then

echo "root is required to run this script"
exit
fi




#install packages

sudo pacman -Syu  qemu-desktop libvirt  edk2-ovmf virt-manager ebtables dnsmasq
#starting and enabling services
sudo systemctl enable --now libvirtd.socket
sudo systemctl enable --now virtlogd.socket
#disable gnome, so graphics cards don't interfere on boot
sudo systemctl disable gdm
#enable default network interface
sudo virsh net-autostart default
sudo virsh net-start default
echo please edit the configuration so that intel_iommu=on (or amd_iommu=on if on AMD CPU) to ensure the IOMMU module is enabled under GRUB_CMDline_default. Also, make sure you have virtualization enabled in BIOS.
sudo nano /etc/default/grub
sudo update-grub
#configure virtual machines

virt-install --name=vm1 \
--memory=2048 \
--vcpus=2 \
--disk path=/var/lib/libvirt/images/myvm.img,size=10 \
--cdrom=/path/to/installation.iso \
--os-variant=ubuntu20.04 \
--network network=default \
--graphics spice

virt-install --name=vm2 \
--memory=2048 \
--vcpus=2 \
--disk path=/var/lib/libvirt/images/myvm.img,size=10 \
--cdrom=/path/to/installation.iso \
--os-variant=ubuntu20.04 \
--network network=default \
--graphics spice

reboot
