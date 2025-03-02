# rhel
check user - vi /etc/passwd
userdel -r johnd


iops:
[ec2-user@node1 ~]$ lsblk -o NAME,HCTL,SIZE,VENDOR,MODEL
NAME        HCTL SIZE VENDOR MODEL
nvme0n1           50G        Amazon Elastic Block Store              
├─nvme0n1p1        1M        
└─nvme0n1p2       50G     

[ec2-user@node1 ~]$  iostat -dx 1 2


Device            r/s     w/s     rkB/s     wkB/s   rrqm/s   wrqm/s  %rrqm  %wrqm r_await w_await aqu-sz rareq-sz wareq-sz  svctm  %util
nvme0n1          1.41    2.80     55.26    349.44     0.00     1.12   0.07  28.57    0.96    3.04   0.01    39.24   124.87   0.75   0.32

Device            r/s     w/s     rkB/s     wkB/s   rrqm/s   wrqm/s  %rrqm  %wrqm r_await w_await aqu-sz rareq-sz wareq-sz  svctm  %util
nvme0n1          0.00    0.00      0.00      0.00     0.00     0.00   0.00   0.00    0.00    0.00   0.00     0.00     0.00   0.00   0.00

[ec2-user@node1 ~]$ sudo dd if=/dev/zero of=/mnt/testfile bs=4k count=100000
100000+0 records in
100000+0 records out
409600000 bytes (410 MB, 391 MiB) copied, 0.392877 s, 1.0 GB/s
[ec2-user@node1 ~]$ iostat -dx 1 2 | awk '/nvme0n1/ {print $2}' | tail -n +1 | head -n 1
1.37
