#!/bin/bash
# test_dashboard.sh: Simulates system load for testing Netdata

echo "Simulating system load..."

# Simulate CPU load
echo "Generating CPU load..."
stress --cpu 4 --timeout 60 &

# Simulate Disk I/O
echo "Generating disk I/O load..."
dd if=/dev/zero of=/tmp/testfile bs=1M count=1024 oflag=dsync &

# Wait for loads to complete
wait

echo "Load testing complete. Check the Netdata dashboard for updates."
