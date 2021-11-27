require_relative './dictionary.rb'
require 'pry'


puts "Howdy, what's your name?"
name = gets.chomp
puts "So nice to meet you #{name}"
puts "What would you like to learn about today?"
puts "You can learn about: #{DICTIONARY.keys}"
query = gets.chomp
# binding.pry
puts "Here is what a #{query} is: #{DICTIONARY[query]}"
