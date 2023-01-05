# script to parse the input files and build different input files
# these input files will be used to construct the data structure that will drive the 
# code

# the input file can be test.txt or input.txt. Run the code by providing the input as the first argument

#initial items for the Monkeys
egrep -i "Starting items:" $1.txt | sed -e "s/.*: //" > input_item_list.txt

#operations - the text will be copied into my function 
egrep "^Monkey|Operation" $1.txt |sed -e "s/Monkey /if monkey == /" |sed -e "s/ .*Operation: /    /" >input_operation.txt

# divisible by value
grep "Test:" $1.txt | sed -e "s/.* by //" > input_divisible_by.txt

# go to if true
grep "If true:" $1.txt | sed -e "s/.* throw to monkey //" > input_true_value.txt

# go to if false
grep "If false:" $1.txt | sed -e "s/.* throw to monkey //" > input_false_value.txt

