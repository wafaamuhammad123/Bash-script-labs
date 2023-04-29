#by using bc command

# define the two operands as variables
NUM1=5.5
NUM2=3.2

# use bc to perform the floating-point operation and assign the result to a variable
RESULT=$(echo "$NUM1 + $NUM2" | bc -l)

# print the result
echo "The result of $NUM1 + $NUM2 is $RESULT"