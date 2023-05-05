=begin

Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.


1. Read problem out loud.
2. Input: array['str', 'str'], hash {:title, :occupation}
   Output: full name and occupation & title
3. Examples/Rules:
4. Steps:
5. Helper Methods: (as needed)

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: array['str', 'str'], hash {:title, :occupation}
   Output: full name and occupation & title


Algorithm
---------
array[str, str] =>  

Code
----

=end

def greetings(name_array, title_hash)
  name = name_array.join(' ')
  title = title_hash[:title]
  occupation = title_hash[:occupation]
  "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."