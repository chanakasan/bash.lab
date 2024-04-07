# redirect stderr and stdout to file
my_command > output.log 2>&1

# shorthand for above
my_command &> output.log
