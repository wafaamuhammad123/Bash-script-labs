#by using bc command

# define the two operands as variables
a=5.5
b=3.2

# use bc to perform the floating-point operation and assign the result to a variable
result=$(echo "$a + $b" | bc -l)

# print the result
echo "The result of $a + $b is $result"