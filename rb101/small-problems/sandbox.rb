

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
   p hash.all? do |key, value|
     value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]
