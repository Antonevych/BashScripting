#!/bin/bash

uptime=$(uptime)
user=$(whoami)
recent_login=$(last)
top_processes=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head)
open_ports=$(netstat -lntu)
v_memory=$(vmstat)
disk_space=$(df -h)

function audit {

echo -e "\nThe result of the workstation audit:"

    echo -e "\n-------Uptime: $uptime"
    echo -e "\n-------Current user: $user"
    echo -e "\n-------Recent login:\n$recent_login"
    echo -e "\n-------TOP-10 processes by RAM/CPU usege :\n$top_processes"
    echo -e "\n-------Open TCP/UDP ports :\n$open_ports"
    echo -e "\n-------Virtual Memory usege:\n$v_memory"
    echo -e "\n-------Usage of disk space:\n$disk_space\n"
}

audit
audit > script_3_audit.txt
