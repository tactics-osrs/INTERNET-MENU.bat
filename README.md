# Internet Troubleshooting Menu Script

This repository contains a Batch script for Windows that provides a menu-driven interface for troubleshooting common internet and network issues. 

## FEATURES
The script includes options to:

1. Flush DNS Resolver Cache: This clears the cache of IP addresses and domain names that your system has stored. Flushing the DNS resolver cache can help resolve website loading issues.


2. Reset TCP/IP Settings: This resets your TCP/IP settings to their default state. Resetting these settings can help solve connectivity problems.


3. Open Network and Internet Settings: This opens the Network and Internet settings page, allowing you to manually adjust your network settings.


4. Release/Renew IP Address: This releases and renews your IP address. This can help solve issues with your current IP address, such as conflicts with other devices.


5. Change IP Address: This changes your IP address to a static one. This can be useful if you need a consistent IP address for certain network configurations.


6. Display Network Configuration: This displays your current network configuration details. This can be useful for troubleshooting or for providing information to tech support.


7. Ping Test: This checks the connectivity to a specific server or website. This can help determine if a server or website is reachable.


8. Traceroute Test: This traces the route that your data takes to reach a server or website. This can help identify where a connection problem is occurring.


10. Network Reset: This resets your entire network settings to their default state. This can be useful if you’re experiencing persistent network issues.


11. Disable/Enable Network Adapter: This disables and then enables your network adapter. This can sometimes resolve issues with the network adapter.

12. Set your IP to automatic DHCP. (This can help if you cannot connect via ethernet due to DHCP settings set to manual, wrong settings ect.)

## NOTES
After each operation, the script returns to the menu until the user chooses to exit. Please remember to run this script with administrative privileges to ensure the commands can execute properly.

Please replace “Ethernet” with the name of your network adapter if it’s different. You can find the name of your network adapter by running netsh interface show interface in the command prompt. As always, remember to run this script with administrative privileges to ensure the commands can execute properly.

## DISCLAIMER:
This batch file was written for personal utility and for educational/experience purposes only. Do not mis-use this file. I do not hold any responsibility of the use/misuse of this script. The code is open-source, of course! As it's a .bat file, please save it as such if you are going to copy the raw code to your notepad.

## PREVIEW OF MENU
![image](https://github.com/tactics-osrs/INTERNET-MENU.bat/assets/76490725/934bc3bd-5101-4d56-86ee-3f5114384bf9)



