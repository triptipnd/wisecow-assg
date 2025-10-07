#!/bin/bash

# Thresholds
CPU_THRESHOLD=80
MEM_THRESHOLD=80
DISK_THRESHOLD=90

# Get system metrics
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d'.' -f1)
MEM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100}' | cut -d'.' -f1)
DISK_USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

# Check CPU
if [ "$CPU_USAGE" -gt "$CPU_THRESHOLD" ]; then
    echo "ALERT: CPU usage is high: $CPU_USAGE%"
else
    echo "CPU usage is normal: $CPU_USAGE%"
fi

# Check Memory
if [ "$MEM_USAGE" -gt "$MEM_THRESHOLD" ]; then
    echo "ALERT: Memory usage is high: $MEM_USAGE%"
else
    echo "Memory usage is normal: $MEM_USAGE%"
fi

# Check Disk
if [ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ]; then
    echo "ALERT: Disk usage is high: $DISK_USAGE%"
else
    echo "Disk usage is normal: $DISK_USAGE%"
fi

# Show top 5 CPU-consuming processes
echo "Top 5 CPU-consuming processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
