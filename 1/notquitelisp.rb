#!/usr/bin/env ruby
input = $stdin.read
counter = 0
input.each_char do |char|
  if char.eql?('(') 
    counter = counter + 1
  elsif char.eql?(')') 
    counter = counter - 1
  end  
end
puts counter
