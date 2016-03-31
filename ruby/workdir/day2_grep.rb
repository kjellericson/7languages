#!/usr/bin/ruby

grep = ARGV.shift

puts "grep #{grep}"

if ARGV.length > 0
  ARGV.each do |filename|
    line = 0
    File.open(filename).each do |row|
      line += 1
      puts "#{filename}:#{line}: #{row}" if /#{grep}/.match(row)
    end
  end
else
  STDIN.each do |row|
    puts "#{row}" if /#{grep}/.match(row)
  end
end
  
  
