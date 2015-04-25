#!/usr/bin/env ruby
require 'prime'
n = gets.to_i

n.times do
  a,b = gets.split.map { |elem| elem.to_i}
  a -= 1 if a % 2 == 0
  while a < b do
    puts a if a.prime?
    a += 2
  end
end