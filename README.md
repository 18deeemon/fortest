# 7 Application
========NFS, NIS+, DNS, telnet, ftp, rlogin, rsh, rcp, RIP, RDISC, SNMP, and others========
# 6 Presentation 
========Translation layer, as this layer serves as a data translator for the network========
# 5 Session  
========Controls the dialogues (connections) between computers========
# 4 Transport 
========TCP, UDP ========
# 3 Network 
========IP, ARP, ICMP ========
# 2 Data link
========PPP, IEEE 802.2 ========
# 1 Physical 
========Ethernet (IEEE 802.3) Token Ring, RS-232, others ========


                                               ### Difference beetwen ***TCP__an__UDP***
 # TCP
 ===Requires an established connection to transmit data (connection should be closed once transmission is complete)===
 
 ===Able to sequence===
 
 ===Can guarantee delivery of data to the destination router===
 
 ===Retransmission of lost packets is possible===
 
 ===Extensive error checking and acknowledgment of data===
 
 ===Data is read as a byte stream; messages are transmitted to segment boundaries===
 
 ===Slower than UDP===
 
 # UDP
 ===Connectionless protocol with no requirements for opening, maintaining, or terminating a connection===
 
 ===Unable to sequence===
 
 ===Cannot guarantee delivery of data to the destination===
 
 ===No retransmission of lost packets===
 
 ===Basic error checking mechanism using checksums===
 
 ===UDP packets with defined boundaries; sent individually and checked for integrity on arrival===
 
 ===Faster than TCP===
