import nmap

#assign the target ip to be scanned to
#a variable
target = '127.0.0.1'

#instantiate a PortScanner object
scanner = nmap.PortScanner()
scanner.scan(target)

for host in scanner.all_hosts():
     for proto in scanner[host].all_protocols():
          lport = scanner[host][proto].keys()
          for port in lport:
               print('port:' ,(port), "state:", (scanner[host][proto][port]['state']))



              
