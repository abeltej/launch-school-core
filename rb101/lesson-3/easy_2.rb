# Question 1
# In this hash of people and their age, see if "Spot" is present.
# Bonus: What are two other hash methods that would work just as well for this solution?

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.include?('Spot')
ages.key?("Spot")
ages.member?("Spot")

# Question 2
# Starting with this string:
munsters_description = "The Munsters are creepy in a good way."
# Convert the string in the following ways (code will be executed on original munsters_description above):

"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
"The munsters are creepy in a good way."
"the munsters are creepy in a good way."
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."
