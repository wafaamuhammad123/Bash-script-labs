REGEX='^[+-]?[0-9]*\.?[0-9]+([eE][+-]?[0-9]+)?$'

# Prompt the user to enter a number
read -p "Enter a number: " NUM

# Check if the entered number matches the float pattern
if [[ $NUM =~ $REGEX ]]; then
  echo "$NUM is a valid floating point number."
else
  echo "$NUM is not a valid floating point number."
fi