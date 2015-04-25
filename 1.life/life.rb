#!/usr/bin/ruby

loop do 
  if (a = gets.chomp.to_i) != 42 
    puts a
  else
    break
  end
end
