REGEX='^[+-]?[0-9]*\.?[0-9]+([eE][+-]?[0-9]+)?$'

# Prompt the user to enter a number
read -p "Enter a number: " num

# Check if the entered number matches the float pattern
if [[ $num =~ $REGEX ]]; then
  echo "$num is a valid floating point number."
else
  echo "$num is not a valid floating point number."
fi