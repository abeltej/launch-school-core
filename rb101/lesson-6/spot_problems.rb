# Pig Latin is a made-up children's language that's intended to be confusing.
# It obeys a few simple rules (below), but when it's spoken quickly it's
# really difficult for non-children to understand.

# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the
# end of the word.

# Rule 2: If a word begins with a consonant sound,
# move it to the end of the word, and then add an "ay" sound to the end of the
# word.

# Input  -- string
# output - string ( modified according to the rules given)


# rule
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the
# end of the word.

# Rule 2: If a word begins with a consonant sound,
# move it to the end of the word, and then add an "ay" sound to the end of the
# word.
# all string input will be lowercase

# it's any consecutive  consonants are moved to the rear of the string, and then added back with the -'ay' sound

# approach
#1 When the first letter is a vowel --> add ay
#2 when the first letter (**) is a consonant -> split string and mutate
#3 when there are consonants, we'll split split at the first vowel and then mutate

# algorithm
# intialize a list of vowels (aeiou)
# intit a var - consonants  to a value of an empty string to store the return of any characters that are not a vowel

# if the first letter append "ay" to the end of the string

# if the first letter is a consonant we're going to keep iterating until we the next consecutive letter is a vowel, and split the string
#        #1cc --- #2vvccc    --move #cc to the rear of the string and then append 'ay'
#
# break the string down into characters to itereate each letter object
#if the first character is not a vowel
#       append any non vowel character back to consonants variable
#       keep iterating until  a vowel is reached
#           init a var leading_str  to a value  of the string split from the index of the vowel to the end of the string

#           reassign leading to leading  appended  consonants back to leading
#           and then append "ay" to  leading


def piglatin(str)
  vowels = %w(a e i o u)
  leading_consonants = ""
  if vowels.include?(str[0])
    return str + 'ay'
  else
    split_index = ''

    str.chars.each_with_index do |char, index|
      if !vowels.include?(char)
        leading_consonants << char
      else
        split_index = index
        break
      end


    end

    leading_str = str[split_index..]  + leading_consonants + 'ay'

  end

end


# work on algorithm

# algorithm
# intialize a local variable to an array of individual vowels (a e i o u)
# if the first letter of the imput string is included in the vowels array, append "ay" to the end and return that string
# intit a var - consonants to an empty string to store the return of any characters that are not a vowel

# how you want to split string

# examples

# p piglatin('apple') == 'appleay'  #- apple + ay
# p piglatin('ear') == 'earay'  # ear + ay
p piglatin('pig') == 'igpay'  # ig p+ay
p piglatin('koala') == 'oalakay' # oaka + k + ay
p piglatin('chair') == 'airchay' #  air + ch + ay
# p piglatin('therapy') == 'erapythay'  # erra + th + ay




VOWELS = ['a', 'e', 'i', 'o', 'u']

def piglatin(string)
  origional_characters = string.chars
  constonants = ''
  suffix = 'ay'

  string.chars.each do |char|
    if VOWELS.include?(char)
      break
    else
      constonants << char
      origional_characters.shift
    end
  end

  (origional_characters.join) + constonants + suffix
end






# friend = "Chandler"
# friends = ["Ross", friend, "Joey", "Rachel", "Monica", "Phoebe"]
# my_favourite_shows = ["The Office", friends, "Silicone Valley"]

# friends[1] = "Mike" # gasp...sorry, Chandler!
# my_favourite_shows[1][1].upcase!

# puts friend # => (MIKE) wrong its CHANDLER
# puts friends[1] #=> MIKE
# puts my_favourite_shows[1][1] #=> MIKE

=begin
JACOBS SOLUTION
problem:
input is a String
output is a collapsed version of the string
- 2 chars are deleted that are the same and adjacent, leftmost first
- when there are no such chars left return the resulting string

ex:
'uqrssrqvtt' -->  'uqrrqvtt' --> uqqvtt --> uvtt --> uv

ds:
str           loop                modified str

algo
- split the string into an array of chars
- loop
  - iterate through the chars with index
    - check if the char is the same as the next
    - if it is, record the index and break
  - delete the element at the recorded index and the next index
  - repeat until there are no consecutive pairs
=end

def same_char_collapse(str)
  chars = str.chars
  loop do
    first_idx = chars.each_with_index do |char, index|
      break index if char == chars[index + 1]
    end
    break if first_idx == chars
    chars.delete_at(first_idx)
    chars.delete_at(first_idx)
  end
  chars.join
end

p same_char_collapse("zzzxaaxy") == "zy"
p same_char_collapse("uqrssrqvtt") == "uv"
p same_char_collapse("aabcddce") == "be"
p same_char_collapse("uqrssrqvttu") == "uvu"