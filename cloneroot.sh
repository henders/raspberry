mount /dev/sda1 /mnt
time rsync -vxaHD --delete / /mnt/
rsync -xaHD --delete /dev/ /mnt/dev/
rm -rf /mnt/dev/.udevdb
umount /dev/sda1
