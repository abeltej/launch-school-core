=begin 
PROBLEM
Identify expected input and output
Make the requirements explicit
Identify rules
Mental model of the problem (optional)

Need to switch out the characters with the character 13 places from it in the alphabet
rules: do not switch out spaces, punctuation, numbers, etc.

EXAMPLES - Validate understanding of the problem

"EBG13 rknzcyr." -> "ROT13 example."
"This is my first ROT13 excercise!" -> "Guvf vf zl svefg EBG13 rkprepvfr!"

DATA STRUCTURES - How we represent data that we will work with when converting the input to output.

input:  -> string 
          
output:  -> string 


ALGORITHM - Steps for converting input to output
loop over input 
if its a letter find the new letter that is 13 places from original character 
else if not a string than keep as existing character



- 
Code w/ intent - Implementation of Algorithm

=end

def rot13(message)
  alphabet = ('a'..'z').to_a
  message.chars.map do |char|
    if alphabet.include?(char.downcase)
      is_upcase = !alphabet.include?(char)
      index = alphabet.find_index(char.downcase)
      new_char = alphabet[index + 13]
      if is_upcase
        return new_char.upcase
      end
    else
      char
    end
  end
end



rot13("EBG13 rknzcyr.") == "ROT13 example."