number="1.234"

# check if the number is valid
if echo "$number" | bc &>/dev/null; then
  echo "Valid floating point number"
else
  echo "Invalid floating point number"
fi