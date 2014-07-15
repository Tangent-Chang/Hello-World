puts "Hello, World!!"

5.times do
  puts "RUBY HELL!!"
end

local_var = '天人'
puts local_var + '永隔'

puts local_var.object_id

array_one = ["哈哈", 123, 4.5]
array_one.each do |go|
  puts go;
end

if array_one[1] < 0
  puts local_var
else
  puts local_var.object_id
end

name = "Tangent"
case name
    when "John"
      puts "Howdy John!"
    when "Ryan"
      puts "Whatz up Ryan!"
    else
      puts "Hi #{name}!"
end