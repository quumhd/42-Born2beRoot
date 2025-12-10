# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    monitoring.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdreissi <jdreissi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/11/20 14:22:10 by jdreissi          #+#    #+#              #
#    Updated: 2025/11/27 12:14:14 by jdreissi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

Architecture=$(uname -srvmo)
pCPU=$(grep -o "physical id" /proc/cpuinfo | wc -l)
vCPU=$(grep -o "processor" /proc/cpuinfo | wc -l)
MEM=$(free --si -h | grep Mem | awk '{print $2}')
USED_MEM=$(free --si -h | grep Mem | awk '{print $3}')
MEM_PERCENT=$(free -k | grep Mem | awk '{printf"%.2f%%", $3/$2*100}')
DISK_SPACE=$(df --total -H | grep total | awk '{print $2}')
USED_DISK_SPACE=$(df --total -H | grep total | awk '{print $3}')
DISK_SPACE_PERCENT=$(df --total | grep total | awk '{print $5}')
CPU_USAGE=$(top -bn1 | grep "%Cpu(s):" | awk '{printf"%.1f%%", $2 + $4}')
LAST_REBOOT=$(who -b | awk '{printf"%s %s", $3, $4}')
LVM=$(if lsblk -f | grep -q LVM; then echo yes; else echo no; fi)
TCP=$(grep TCP /proc/net/sockstat | awk '{print $3}')
USER=$(who -q | grep users | awk -F'=' '{print $2}')
IP_ADRESS=$(hostname -I | awk '{print $1}')
MAC_ADRESS=$(ip a show | grep ether | awk '{print $2}')
SUDO=$(grep COMMAND var/log/sudo/sudo.log | wc -l)

echo "#Architecture:    $Architecture"
echo "#CPU physical:    $pCPU"
echo "#CPU:             $vCPU"
echo "#Memory Usage:    $USED_MEM/$MEM ($MEM_PERCENT)"
echo "#Disk Usage:      $USED_DISK_SPACE/$DISK_SPACE ($DISK_SPACE_PERCENT)"
echo "#CPU load:        $CPU_USAGE"
echo "#Last Reboot:     $LAST_REBOOT"
echo "#LVM use: $LVM"
echo "#Connected TCPs:  $TCP"
echo "#Users log:       $USER"
echo "#Network: $IP_ADRESS ($MAC_ADRESS)"
echo "#Sudo:    $SUDO"

