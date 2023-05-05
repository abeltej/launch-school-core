#This is important enough that we're going to mention it again in the book. Make sure to follow the style rules listed here.

#The Ruby language has specific stylistic conventions that make reading and writing Ruby code easier for everyone. These are things you should adopt as quickly as possible, otherwise your code will stand out like a sore thumb.

# 1. Your text editor's tab function should be set to 2 spaces and indenting should be set to use spaces. This is really important, and if you don't do this, it's a sure sign you're a new Ruby developer. Make sure to open your editor right now and figure out how to turn tabs to 2 spaces, and convert all existing tabs to 2 spaces.

# 2. When you see the # sign at the beginning of a line, that means anything after it, on the same line, is a comment. Comments are used by programmers to leave notes for other programmers or themselves at a later point in time.

# 3. When you define or initialize a method, variable, or file, you should always use snake_case formatting. snake_case formatting is created using all lower case letters and separating words with the underscore character.

# Naming a file
  this_is_a_snake_cased_file.rb

# Assigning a variable
  forty_two = 42

# Defining a method
  def this_is_a_great_method
   # do stuff
  end

# 4. When you want to represent a value that will not change in your Ruby program, you define a constant variable, often referred to as a constant. In Ruby, constants are denoted with all uppercase letters.

# Constant declaration
  FOUR = 'four'
  FIVE = 5

# 5. When working with do...end blocks, prefer {} when the entire code expression fits on one line.

# Multi-line vs single line
  [1, 2, 3].each do |i|
    # do stuff
  end

  [1, 2, 3].each { |i| # do stuff }

# 6. The last style convention you'll need to learn at this point is how to declare a class name. When naming your classes you will use CamelCase formatting. CamelCase uses no spaces and capitalizes every word.

# Class naming
  class MyFirstClass
  end

  class MySecondClass
  end

#That about covers the most important style conventions to get started. If you'd like some more information about Ruby styling, check out the Ruby style guide.

#A Note on Style
  #In this first lesson, we're going to deviate from standard Ruby convention a little in order to focus on teaching concepts. We'll outline the deviations below.

Parentheses
  #In Ruby, when you invoke a method, the parentheses are optional. This often makes it difficult to differentiate between method invocations and local variables. For example, if you type puts -- is that a method invocation, or a local variable? If you know that there's a method called puts, then you know it's a method call. But if you didn't, then it's uncertain. To be more clear while you're still getting adjusted to reading Ruby, in this lesson we're going to always use parentheses when invoking a method. Example: we will use gets().chomp() instead of gets.chomp.

puts and gets
  #When you want to display something, you can use the puts method. When you want to ask the user for some input, you can use the gets method. In this lesson, we are going to call those methods with their module, like this: Kernel.puts() or Kernel.gets(). Doing this shows that these are module methods in the Kernel module. It's not critical that you remember this, but it's important to understand that all methods come from somewhere.

#These are the stylistic conventions we'll follow in the provided walk-through code in this lesson, and you do not have to follow with this convention in your own assignment. Professional Rubyists don't do this, so it's for instructional purposes only. We'll stop these conventions and follow more standard practices after the first lesson.