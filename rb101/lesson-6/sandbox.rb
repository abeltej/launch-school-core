# advice = "Few things in life are as important as house training your pet dinosaur."

# advice.gsub(/important/, "urgent")

# p (10..100).cover?(42)

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# flintstones.map {}

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end


def a_method(string)
  string = string << 'world'
end

a = 'hello'
a_method(a)
p a




arr2 = arr1.each do |sub_arr|
  sub_arr.select do |num|
    num[0] > 4 && num[1] > 4
  end
end


loop do
  num_1 = nil
  num_4 = num_3 + 1
  num_5 = method_2 + num_3
  puts num_5
  break
end


arr1 = [[6, 8], [2, 9], [15, 11], [4, 100]]

arr2 = arr1.select do |sub_arr|
  sub_arr.all? do |num|
     num > 4
  end
end


# new_pet = pet << animal  check by reference 

def method_1
  num_1 = 1
end

def method_2
  num_2 = num_1 + 1
end

num_3 = method_1 + 2

loop do
  num_4 = num_3 + 1
  binding.pry
  num_5 = method_2 + num_3
  binding.pry
  puts num_5
  break
end


# <=> other objects need to include Comparable module