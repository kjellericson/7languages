#!/usr/bin/ruby

a = []
for i in 1..16 do
  a.push(i)
end

puts a.join(" - ")

a.each do |nr1,nr2|
  puts " each: #{nr1}, #{nr2}"
end

a.each_slice(4) do |nr|
    puts " slice(4): #{nr}"
end

