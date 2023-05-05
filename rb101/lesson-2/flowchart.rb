# frozen_string_literal: true
# Using a flowchart helps us map out the logical sequence of a possible solution in a visual way. We'll take a stab at drafting a flowchart for the same problem we saw in the previous assignment. But first, let's take a look at the various components at our disposal in a flowchart.

# Start/Stop = oval
# Processing Step = rectangle
# Input/Output = rhombus
# Decision = diamond
# Connector = circle

#  high level pseudo code
# while user wants to keep going
# - ask the user for a collection of numbers
# - extract the largest one from that collection and save it
# - ask the user if they want to input another collection

# return saved list of numbers

# full pseudo code

# while user wants to keep going
# - ask the user for a collection of numbers
# - iterate through the collection one by one.
#  - save the first value as the starting value.
#  - for each iteration, compare the saved value with the current value.
#  - if the saved value is greater, or it's the same
#  - move to the next value in the collection
# - otherwise, if the current value is greater
#  - reassign the saved value as the current value

# - after iterating through the collection, save the largest value into the list.
# - ask the user if they want to input another collection

# return saved list of numbers

#  Formal pseudo-code.
# START

# SET large_numbers = []
# SET keep_going = true

# WHILE keep_going == true
# GET "enter a collection"
# SET collection
# SET largest_number = SUBPROCESS "extract the largest one from that collection"
# large_numbers.push(largest_number)
# GET "enter another collection?"
# IF "yes"
# keep_going = true
# ELSE
# keep_going = false
# IF keep_going == false
# exit the loop

# PRINT large_numbers

# END
