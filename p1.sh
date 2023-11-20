#!/bin/bash

# Function to print spaces
print_spaces() {
    local i
    for ((i=1; i<=$1; i++)); do
        echo -n " "
    done
}

# Function to print numbers
print_numbers() {
    local num=$1
    local i
    for ((i=1; i<=$num; i++)); do
        echo -n "$num "
    done
}

# Function to print the number pyramid
print_same_number_pyramid() {
    local n=$1
    local i j

    for ((i=1; i<=n; i++)); do
        print_spaces $((n - i))

        # Print numbers for each layer
        print_numbers $i

        echo
    done
}

# Get user input for the height of the pyramid
read -p "Enter the height of the pyramid: " height

# Call the function to print the number pyramid pattern
print_same_number_pyramid $height
