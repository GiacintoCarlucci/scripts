wmic nic get NetConnectionID
netsh int ip reset
netsh winsock reset
netsh advfirewall reset
netsh interface ip set address name="Wi-Fi" source="dhcp"
netsh interface ip set dns name="Wi-Fi" source="static" address="8.8.8.8"
netsh interface ip add dns name="Wi-Fi" addr="8.8.4.4" index=2
pause
