def prompt(message)
  Kernel.puts("=> message")
end

prompt("Choice one: rock, paper, scissors")
choice = Kernel.gets().chomp()

computer choice = 