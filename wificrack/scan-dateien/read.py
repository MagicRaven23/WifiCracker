from scapy.all import *

pkts = rdpcap("Rat.csv-01.cap")

print(pkts)