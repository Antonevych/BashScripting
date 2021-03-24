#!/bin/bash

echo -e "\nWrite the \"cat script_2_output.json\" command, press \"ENTER\" and then you will be able to see information about your OS.\n"

function os_info {
    echo -e "\n-------Information about your Operation System:"

    echo -e "\n-------Version of Operation System: \n$(uname -a)"

    echo -e "\n-------Network Interfaces: \n$(ifconfig -a)"

    echo -e "\n-------Statistics for network interfaces: \n$(ip -s link)"

    echo -e "\n-------Your current UFW status: \n$(sudo ufw status)"

    echo -e "\n-------Content of /etc/resolv.conf file, sourse of DNS information: \n$(grep ^[^#] /etc/resolv.conf)"

    echo -e "\n-------Content of /etc/sysctl.conf, functions previously found in netbase: \n$(head -33 /etc/sysctl.conf | tail +16)\n"

    echo -e "\n-------Protected links: \n$(head -77 /etc/sysctl.conf | tail +73)\n"
}

os_info > script_2_output.txt
