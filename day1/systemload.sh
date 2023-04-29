
# Ensure the script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

while true; do
    # Get the current date and time
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

    LOADAVG=$(uptime | awk '{print $10" "$11" "$12}')
    echo "${TIMESTAMP} ${  LOADAVG}" >> /var/log/system-load

    # Wait for 1 minute 
    sleep 60
done
