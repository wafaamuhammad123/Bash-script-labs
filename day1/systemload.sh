
# Check if script is being run as root
if [ $(id -u) -ne 0 ]; then
    echo "This script must be run as root"
    exit 1
fi

#I'm Creating log file if it doesn't exist
if [ ! -f /var/log/system-load ]; then
    touch /var/log/system-load
fi

# Get system load and write to log file
uptime >> /var/log/system-load
