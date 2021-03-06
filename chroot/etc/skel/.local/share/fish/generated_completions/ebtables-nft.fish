# ebtables-nft
# Autogenerated from man page /usr/share/man/man8/ebtables-nft.8
complete -c ebtables-nft -s t -l table --description '.'
complete -c ebtables-nft -s L -s Z --description 'are combined, the commands.'
complete -c ebtables-nft -s N -s P --description 'are combined, or when.'
complete -c ebtables-nft -l atomic-file --description 'is used.'
complete -c ebtables-nft -s A -l append --description 'Append a rule to the end of the selected chain.'
complete -c ebtables-nft -s D -l delete --description 'Delete the specified rule or rules from the selected chain.'
complete -c ebtables-nft -l Ln --description 'to list the rules with their rule number).'
complete -c ebtables-nft -s I --description 'command.'
complete -c ebtables-nft -s C -l change-counters --description 'Change the counters of the specified rule or rules from the selected chain.'
complete -c ebtables-nft -l insert --description 'Insert the specified rule into the selected chain at the specified rule numbe…'
complete -c ebtables-nft -l policy --description 'Set the policy for the chain to the given target.'
complete -c ebtables-nft -s F -l flush --description 'Flush the selected chain.'
complete -c ebtables-nft -l zero --description 'Set the counters of the selected chain to zero.'
complete -c ebtables-nft -l list --description 'List all rules in the selected chain.'
complete -c ebtables-nft -l Lx --description '.'
complete -c ebtables-nft -l Lc --description '.'
complete -c ebtables-nft -l Lmac2 --description '.'
complete -c ebtables-nft -l new-chain --description 'Create a new user-defined chain with the given name.'
complete -c ebtables-nft -s X -l delete-chain --description 'Delete the specified user-defined chain.'
complete -c ebtables-nft -s E -l rename-chain --description 'Rename the specified chain to a new name.'
complete -c ebtables-nft -l init-table --description 'Replace the current table data by the initial table data.'
complete -c ebtables-nft -l atomic-init --description 'Copy the kernel\'s initial data of the table to the specified file.'
complete -c ebtables-nft -l atomic-save --description 'Copy the kernel\'s current data of the table to the specified file.'
complete -c ebtables-nft -l atomic-commit --description 'Replace the kernel table data with the data contained in the specified file.'
complete -c ebtables-nft -s V -l version --description 'Show the version of the ebtables userspace program.'
complete -c ebtables-nft -s h -l help --description 'Give a brief description of the command syntax.'
complete -c ebtables-nft -s j -l jump --description 'The target of the rule.'
complete -c ebtables-nft -s M -l modprobe --description 'When talking to the kernel, use this program to try to automatically load mis…'
complete -c ebtables-nft -l concurrent --description 'Use a file lock to support concurrent scripts updating the ebtables kernel ta…'
complete -c ebtables-nft -s p -l protocol --description 'The protocol that was responsible for creating the frame.'
complete -c ebtables-nft -l proto --description 'is an alias for this option.'
complete -c ebtables-nft -s i -l in-interface --description 'The interface (bridge port) via which a frame is received (this option is use…'
complete -c ebtables-nft -l in-if --description 'is an alias for this option.'
complete -c ebtables-nft -l logical-in --description 'The (logical) bridge interface via which a frame is received (this option is …'
complete -c ebtables-nft -s o -l out-interface --description 'The interface (bridge port) via which a frame is going to be sent (this optio…'
complete -c ebtables-nft -l out-if --description 'is an alias for this option.'
complete -c ebtables-nft -l logical-out --description 'The (logical) bridge interface via which a frame is going to be sent (this op…'
complete -c ebtables-nft -s s -l source --description 'The source MAC address.'
complete -c ebtables-nft -l src --description 'is an alias for this option.'
complete -c ebtables-nft -s d -l destination --description 'The destination MAC address.  See.'
complete -c ebtables-nft -l dst --description 'is an alias for this option.'
complete -c ebtables-nft -s c -l set-counter --description 'If used with.'
complete -c ebtables-nft -s m --description 'These extensions deal with functionality supported by kernel modules suppleme…'
complete -c ebtables-nft -l 802_3-sap --description 'DSAP and SSAP are two one byte 802. 3 fields.'
complete -c ebtables-nft -l 802_3-type --description 'If the 802.'
complete -c ebtables-nft -l among-dst --description 'Compare the MAC destination to the given list.'
complete -c ebtables-nft -l among-src --description 'Compare the MAC source to the given list.'
complete -c ebtables-nft -l among-dst-file --description 'Same as.'
complete -c ebtables-nft -l among-src-file --description 'Same as.'
complete -c ebtables-nft -l arp-opcode --description 'The (R)ARP opcode (decimal or a string, for more details see ebtables -h arp …'
complete -c ebtables-nft -l arp-htype --description 'The hardware type, this can be a decimal or the string Ethernet (which sets t…'
complete -c ebtables-nft -l arp-ptype --description 'The protocol type for which the (r)arp is used (hexadecimal or the string IPv…'
complete -c ebtables-nft -l arp-ip-src --description 'The (R)ARP IP source address specification.'
complete -c ebtables-nft -l arp-ip-dst --description 'The (R)ARP IP destination address specification.'
complete -c ebtables-nft -l arp-mac-src --description 'The (R)ARP MAC source address specification.'
complete -c ebtables-nft -l arp-mac-dst --description 'The (R)ARP MAC destination address specification.'
complete -c ebtables-nft -l ip-source --description 'The source IP address.  The flag.'
complete -c ebtables-nft -l ip-src --description 'is an alias for this option.'
complete -c ebtables-nft -l ip-destination --description 'The destination IP address.  The flag.'
complete -c ebtables-nft -l ip-dst --description 'is an alias for this option.'
complete -c ebtables-nft -l ip-tos --description 'The IP type of service, in hexadecimal numbers.  IPv4 .'
complete -c ebtables-nft -l ip-protocol --description 'The IP protocol.  The flag.'
complete -c ebtables-nft -l ip-proto --description 'is an alias for this option.'
complete -c ebtables-nft -l ip-source-port --description 'The source port or port range for the IP protocols 6 (TCP), 17 (UDP), 33 (DCC…'
complete -c ebtables-nft -l ip-sport --description 'is an alias for this option.'
complete -c ebtables-nft -l ip-destination-port --description 'The destination port or port range for ip protocols 6 (TCP), 17 (UDP), 33 (DC…'
complete -c ebtables-nft -l ip-dport --description 'is an alias for this option.  ip6 Specify IPv6 fields.'
complete -c ebtables-nft -l ip6-source --description 'The source IPv6 address.  The flag.'
complete -c ebtables-nft -l ip6-src --description 'is an alias for this option.'
complete -c ebtables-nft -l ip6-destination --description 'The destination IPv6 address.  The flag.'
complete -c ebtables-nft -l ip6-dst --description 'is an alias for this option.'
complete -c ebtables-nft -l ip6-tclass --description 'The IPv6 traffic class, in hexadecimal numbers.'
complete -c ebtables-nft -l ip6-protocol --description 'The IP protocol.  The flag.'
complete -c ebtables-nft -l ip6-proto --description 'is an alias for this option.'
complete -c ebtables-nft -l ip6-source-port --description 'The source port or port range for the IPv6 protocols 6 (TCP), 17 (UDP), 33 (D…'
complete -c ebtables-nft -l ip6-sport --description 'is an alias for this option.'
complete -c ebtables-nft -l ip6-destination-port --description 'The destination port or port range for IPv6 protocols 6 (TCP), 17 (UDP), 33 (…'
complete -c ebtables-nft -l ip6-dport --description 'is an alias for this option.'
complete -c ebtables-nft -l ip6-icmp-type --description 'Specify ipv6-icmp type and code to match.'
complete -c ebtables-nft -l log --description 'watcher to give limited logging, for example.'
complete -c ebtables-nft -l limit --description 'Maximum average matching rate: specified as a number, with an optional /secon…'
complete -c ebtables-nft -l limit-burst --description 'Maximum initial number of packets to match: this number gets recharged by one…'
complete -c ebtables-nft -l mark --description 'Matches frames with the given unsigned mark value.'
complete -c ebtables-nft -l pkttype-type --description 'Matches on the Ethernet "class" of the frame, which is determined by the gene…'
complete -c ebtables-nft -l stp-type --description 'The BPDU type (0-255), recognized non-numerical types are config , denoting a…'
complete -c ebtables-nft -l stp-flags --description 'The BPDU flag (0-255), recognized non-numerical flags are topology-change , d…'
complete -c ebtables-nft -l stp-root-prio --description 'The root priority (0-65535) range.'
complete -c ebtables-nft -l stp-root-addr --description 'The root mac address, see the option.'
complete -c ebtables-nft -l stp-root-cost --description 'The root path cost (0-4294967295) range.'
complete -c ebtables-nft -l stp-sender-prio --description 'The BPDU\'s sender priority (0-65535) range.'
complete -c ebtables-nft -l stp-sender-addr --description 'The BPDU\'s sender mac address, see the option.'
complete -c ebtables-nft -l stp-port --description 'The port identifier (0-65535) range.'
complete -c ebtables-nft -l stp-msg-age --description 'The message age timer (0-65535) range.'
complete -c ebtables-nft -l stp-max-age --description 'The max age timer (0-65535) range.'
complete -c ebtables-nft -l stp-hello-time --description 'The hello time timer (0-65535) range.'
complete -c ebtables-nft -l stp-forward-delay --description 'The forward delay timer (0-65535) range.  vlan Specify 802.'
complete -c ebtables-nft -l vlan-id --description 'The VLAN identifier field (VID).  Decimal number from 0 to 4095.'
complete -c ebtables-nft -l vlan-prio --description 'The user priority field, a decimal number from 0 to 7.'
complete -c ebtables-nft -l vlan-encap --description 'The encapsulated Ethernet frame type/length.'
complete -c ebtables-nft -l log-level --description '.'
complete -c ebtables-nft -l log-prefix --description '.'
complete -c ebtables-nft -l log-ip --description '.'
complete -c ebtables-nft -l log-ip6 --description '.'
complete -c ebtables-nft -l log-arp --description '.'
complete -c ebtables-nft -l nflog --description '.'
complete -c ebtables-nft -l nflog-group --description '.'
complete -c ebtables-nft -l nflog-prefix --description '.'
complete -c ebtables-nft -l nflog-range --description '.'
complete -c ebtables-nft -l nflog-threshold --description '.'
complete -c ebtables-nft -l ulog --description '.'
complete -c ebtables-nft -l ulog-prefix --description '.'
complete -c ebtables-nft -l ulog-nlgroup --description '.'
complete -c ebtables-nft -l ulog-cprange --description '.'
complete -c ebtables-nft -l ulog-qthreshold --description '.'
complete -c ebtables-nft -l arpreply-mac --description 'Specifies the MAC address to reply with: the Ethernet source MAC and the ARP …'
complete -c ebtables-nft -l arpreply-target --description 'Specifies the standard target.'
complete -c ebtables-nft -l to-destination --description '.'
complete -c ebtables-nft -l to-dst --description 'is an alias for this option.'
complete -c ebtables-nft -l dnat-target --description '.'
complete -c ebtables-nft -l mark-set --description '.'
complete -c ebtables-nft -l mark-or --description '.'
complete -c ebtables-nft -l mark-and --description '.'
complete -c ebtables-nft -l mark-xor --description '.'
complete -c ebtables-nft -l mark-target --description '.'
complete -c ebtables-nft -l redirect-target --description '.'
complete -c ebtables-nft -l to-source --description '.'
complete -c ebtables-nft -l to-src --description 'is an alias for this option.'
complete -c ebtables-nft -l snat-target --description '.'
complete -c ebtables-nft -l snat-arp --description '.'

