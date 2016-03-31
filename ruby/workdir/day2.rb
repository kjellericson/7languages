#!/usr/bin/ruby

# Make an array of 1..16
a = []
for i in 1..16 do
  a.push(i)
end

# Try different printing
puts a.join(" - ")

a.each do |nr1,nr2|
  puts " each: #{nr1}, #{nr2}"
end

a.each_slice(4) do |nr|
    puts " slice(4): #{nr}"
end
