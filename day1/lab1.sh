#1-

num1=20.5
num2=5
result=$(printf "%.2f" $(echo "$num1/$num2" | bc -l))
echo $result


#2-


num=3.14

regex='^[+-]?[0-9]+([.][0-9]+)?$'

if [[ $num =~ $regex ]]; then
    echo "$num is a valid floating point number"
else
    echo "$num is not a valid floating point number"
fi


#3-


if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

while true; do
    load=$(uptime | awk '{print $10}')
    date=$(date '+%Y-%m-%d %H:%M:%S')

    echo "$date Load Average: $load" >> /var/log/system-load
    sleep 60
done