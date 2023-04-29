
# Ensure the script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

while true; do
    # Get the current date and time
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')

    loadavg=$(uptime | awk '{print $10" "$11" "$12}')
    echo "${timestamp} ${loadavg}" >> /var/log/system-load

    # Wait for 1 minute 
    sleep 60
done
