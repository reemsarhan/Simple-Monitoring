#!/bin/bash
# setup.sh: Installs and configures Netdata

echo "Starting Netdata installation..."

# Install dependencies
sudo apt update
sudo apt install -y curl

# Install Netdata
bash <(curl -Ss https://my-netdata.io/kickstart.sh) --stable

# Verify installation
if command -v netdata >/dev/null; then
    echo "Netdata installed successfully!"
else
    echo "Netdata installation failed."
    exit 1
fi

# Configure alerts (example for CPU usage > 80%)
cat <<EOF | sudo tee /etc/netdata/health.d/cpu.conf
template: 80% CPU usage
      on: system.cpu
    calc: $user + $system
   units: %
   every: 10s
    warn: $this > 80
    info: "CPU usage is above 80% for more than 10 seconds"
   green: $this < 80
EOF

# Restart Netdata
sudo systemctl restart netdata

echo "Netdata setup is complete. Access the dashboard at http://<your-server-ip>:19999"
