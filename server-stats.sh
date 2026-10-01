


#Total CPU usage

echo -e "\nCPU usage:"
top -bn1 | grep "CPU(s)" | awk '{print 100-$8 "%"}'

#Total Memory usage

echo -e "\nMemory usage:"
free -m | grep "Mem" | awk '{print "Free: " $4 " -> " ($4*100)/$2 "%" " Used: " $3 " -> " ($3*100)/$2 "%"}'

#Total disk usage

echo -e "\nDisk usage:"
df -h | grep "sda1" | awk '{print "Free: " $4 " -> " 100-$5 "%" " Used: " $3 " -> " $5}'

#Top 5 processes by CPU usage

echo -e "\nTop 5 processes by CPU usage:"
ps aux --sort=-%cpu | head -n 6

#Top 5 processes by memory usage

echo -e "\nTop 5 processes by memory usage:"
ps aux --sort=-%mem | head -n 6
