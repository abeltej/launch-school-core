=begin 

You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block for each letter (direction) and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

PROBLEM
Identify expected input and output
Make the requirements explicit
Identify rules
Mental model of the problem (optional)

walk a single block for each direction letter 
  each walk takes one minute 

rules: walk a single block for each direction letter 
  each walk takes one minute 
  return in exactly 10 minutes 
  otherwise return false
  must return to starting point

EXAMPLES - Validate understanding of the problem
 expect(is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])).to eq(true)
    expect(is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e'])).to eq(false)
    expect(is_valid_walk(['w'])).to eq(false)
    expect(is_valid_walk(['n','n','n','s','n','s','n','s','n','s'])).to eq(false)

DATA STRUCTURES - How we represent data that we will work with when converting the input to output.

input:  array of strings
output:  boolean ( true or false )

ALGORITHM - Steps for converting input to output
loop over array and adding
+1 for each 'n'
-1 for each "s"
+1 each 'w'
-1 each 'e'

if n + s == 0 then return true
if w + e == 0 then return true 
- 
Code w/ intent - Implementation of Algorithm

=end

# first check if theres more than 10 letters 
# use #tally
def is_valid_walk(walk)
  walk.each do |direction|
    n = 0
    s = 0
    e = 0
    w = 0
    if direction == 'n'
      n = n + 1
    elsif direction.include('s')
      s += 1
    elsif direction.include('w')
      w += 1 
    else 
      e += 1
    end
    p direction
  end
end

is_valid_walk(['n','s','n','s','n','s','n','s','w','e'])  # == true
is_valid_walk(['w','e','w','e','w','e','n','s','w','e','w','e']) # == false
is_valid_walk(['w']) == #false
is_valid_walk(['n','n','n','s','n','s','n','s','n','s'])#  == false