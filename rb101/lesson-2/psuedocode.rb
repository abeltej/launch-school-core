# When you write programming code, you're writing it for other programs to process. When you write Ruby, you are writing for the Ruby interpreter to process. If you make a syntax error, the Ruby interpreter will complain, saying it doesn't know how to process the broken syntax. If there are no errors, the interpreter will be able to parse the code, and perform the instructions in the code. Because programming code must be error-free, you must follow a very precise format when programming. A missing period or an additional comma will cause the entire program to break down.

# Pseudo-code, on the other hand, is meant for humans to read. It's not meant for machines or programs to process, and therefore there's no rigid format to follow. Human brains are far more flexible and powerful than programming language interpreters or compilers.

# Given a collection of integers.

# Iterate through the collection one by one.
#  - save the first value as the starting value.
#  - for each iteration, compare the saved value with the current value.
#  - if the saved value is greater, or it's the same
#    - move to the next value in the collection
#  - otherwise, if the current value is greater
#    - reassign the saved value as the current value

# After iterating through the collection, return the saved value.

#The above is an approach we can take to solve the problem. We don't use programming code first, because we're trying to load the problem into our brain first.

#When you first approach any problem, it's important to try to understand it well. In order to do that, you have to spend time to load the problem into your brain. Only then can you start to dissect it, understand it, and come up with an execution path to solve it.

#Unfortunately, loading the problem in your brain takes some effort, and you have to continuously turn the problem over and over before it gets fully absorbed by your brain. Doing this while working with a programming language is hard, because your train of thought is constantly being interrupted by syntax issues. Instead of thinking about the logic and dissecting the problem, you're searching for specific language syntax issues to please the interpreter, which has nothing to do with the logical aspect of solving a problem.

#Therefore, there are two layers to solving any problem:

#The logical problem domain layer.
#The syntactical programming language layer.
#When you're not yet fluent in a programming language, doing both at the same time can be very difficult and frustrating.

#This is where pseudo-code comes in to play. Using pseudo-code helps us focus on the logical problem domain layer, without dragging us down to the programming language layer.

#The problem with pseudo-code, however, is that we cannot verify its logic. The above pseudo-code that we wrote earlier, for example, seems about right. But how can we be certain? In order to verify its logic, we have to translate the pseudo-code into programming code. This is also where you can focus on programming language syntax issues without having it interrupt your flow.

#Formal Pseudo-Code
#Before we can take our pseudo-code and translate it to program code, we need to first formalize the pseudo-code a little bit more. We'll still use English, but we'll use some keywords to help us break down the program logic into concrete commands, which will then make translating to program code much easier.

#We'll use the below keywords to assist us, along with their meaning.

# keyword	meaning
# START	start of the program
# SET	sets a variable we can use for later
# GET	retrieve input from user
# PRINT	displays output to user
# READ	retrieve value from variable
# IF / ELSE IF / ELSE	show conditional branches in logic
# WHILE	show looping logic
#END	end of the program