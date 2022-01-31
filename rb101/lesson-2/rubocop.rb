Kernel.puts("hello world")

# $ rubocop hello.rb
# Inspecting 1 file
# C

# Offenses:

# hello.rb:1:1: C: Style/FrozenStringLiteralComment: Missing frozen string literal comment.
# Kernel.puts("hello world")

# hello.rb:1:13: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
# Kernel.puts("hello world")
           # ^^^^^^^^^^^^^
# hello.rb:1:27: C: Layout/TrailingEmptyLines: Final newline missing.
# Kernel.puts("hello world")
                          
# 1 file inspected, 3 offenses detected

# The first line tells you how many files were inspected. In this case, there's just 1 file. This should tell you that Rubocop is pretty powerful, and can inspect multiple files at once. In fact, you could use it to inspect your entire project. We'll stick to working with 1 file at a time for now.
# The C stands for Convention, which means a convention was broken. Other possible offenses are W (warning), E (error), and F (fatal error).
# The list of offenses appears next; we have three, so you can see they appear sequentially in the order in which the offending code occurs in the inspected file. The first part of the offense tells you where the offense occurred: the file name, the line number, and the column number. Then C again for convention, then the offense message. After that, it even shows you the actual piece of code where the offense occurred. Very nice!

#To find out which cop complained, we can do this.

# $ rubocop rubocop.rb --format offenses

# 1  Style/FrozenStringLiteralComment
# 1  Style/StringLiterals
# --
# 2  Total