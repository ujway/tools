#!/usr/bin/env ruby

require 'json'

input_file = ARGF.read()
output_file = './output.txt'
json_data = JSON.load(input_file)

File.open(output_file, "w") do |f|
  f.puts "test"
end