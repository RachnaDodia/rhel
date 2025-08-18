touch /tmp/server_stats.txt
clear > /tmp/server_stats.txt
echo -e "\n########### IP Address of server ########" >> /tmp/server_stats.txt
ip r l >> /tmp/server_stats.txt
echo -e "\n########### HOSTNAME of server ########" >> /tmp/server_stats.txt
hostname >> /tmp/server_stats.txt
echo -e "\n########### Ethernet Link Status ########" >> /tmp/server_stats.txt
ip link show >> /tmp/server_stats.txt
echo -e "\n########### Ethernet configuration ########" >> /tmp/server_stats.txt
cat /etc/sysconfig/network-scripts/ifcfg-* >> /tmp/server_stats.txt
echo -e "\n########### Bonding status and devices in that ########" >> /tmp/server_stats.txt
cat /proc/net/bonding/bond* 2>> /tmp/server_stats.txt
echo -e "\n########### Error while mounting mount points ########" >> /tmp/server_stats.txt
mount -a >> /tmp/server_stats.txt
echo -e "\n########### Disk utilisation ########" >> /tmp/server_stats.txt
df -hT >> /tmp/server_stats.txt
echo -e "\n########### FSTAB Entry ########" >> /tmp/server_stats.txt
cat /etc/fstab >> /tmp/server_stats.txt
echo -e "\n########### mounted filesystem ########" >> /tmp/server_stats.txt
cat /proc/mounts >> /tmp/server_stats.txt
echo -e "\n########### Physical RAM ########" >> /tmp/server_stats.txt
free -m >> /tmp/server_stats.txt
echo -e "\n########### Physical Volumes ########" >> /tmp/server_stats.txt
pvs >> /tmp/server_stats.txt
echo -e "\n########### Volume Groups ########" >> /tmp/server_stats.txt
vgs >> /tmp/server_stats.txt
echo -e "\n########### Logical Volume ########" >> /tmp/server_stats.txt
lvs >> /tmp/server_stats.txt
echo -e "\n########### Disk attached in OS ########" >> /tmp/server_stats.txt
lsblk >> /tmp/server_stats.txt
echo -e "\n########### Ethernet details ########" >> /tmp/server_stats.txt
ifconfig -a >> /tmp/server_stats.txt
echo -e "\n########### Route Entry ########" >> /tmp/server_stats.txt
route -n >> /tmp/server_stats.txt
echo -e "\n########### Ueser entry in passwd file ########" >> /tmp/server_stats.txt
cat /etc/passwd >> /tmp/server_stats.txt
echo -e "\n########### Multipath disks ########" >> /tmp/server_stats.txt
multipath -ll >> /tmp/server_stats.txt
echo -e "\n########### UUID for all devices ########" >> /tmp/server_stats.txt
blkid >> /tmp/server_stats.txt
echo -e "\n########### UPTIME of server ########" >> /tmp/server_stats.txt
uptime >> /tmp/server_stats.txt
echo -e "\n########### O/P date ########" >> /tmp/server_stats.txt
date >> /tmp/server_stats.txt
echo -e "\n########### EOS Release ########" >> /tmp/server_stats.txt
cat /etc/*release >> /tmp/server_stats.txt
echo -e "\n########### Hardware Details ########" >> /tmp/server_stats.txt
dmidecode -t1 >> /tmp/server_stats.txt
echo -e "\n########### HBA WWN No ########" >> /tmp/server_stats.txt
cat /sys/class/fc_host/host*/port_name 2>> /tmp/server_stats.txt
echo -e "\n########### HBA port status ########" >> /tmp/server_stats.txt
cat /sys/class/fc_host/host*/port_state 2>> /tmp/server_stats.txt



