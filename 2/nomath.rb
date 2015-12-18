#!/usr/bin/env ruby
list = File.open(ARGF.argv[0])
lines = list.readlines()
total_area = 0
lines.each do |package|
  areas = package.split('x').collect { |x| x.to_i() }.sort!.combination(2).collect { |x,y| 2*x*y }.sort!
  total_area += areas.inject { |tot, n| tot + n } + areas[0]/2
end
puts total_area
