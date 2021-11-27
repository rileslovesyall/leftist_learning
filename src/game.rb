require_relative './dictionary.rb'
require 'pry'
require 'paint'

class Game

	def initialize
		self.run
	end

	def run
		puts Paint["Howdy, what's your name?", :green]
		name = gets.chomp
		puts Paint["So nice to meet you #{name}", :green]
		get_definition()
	end



	def get_definition
		puts Paint["What would you like to learn about today?", :magenta]
		puts Paint["You can learn about: #{DICTIONARY.keys}", :magenta]
		query = gets.chomp
		puts Paint["Here is what a #{query} is: #{DICTIONARY[query]}", :white]
		puts Paint["Do you want to learn something else?", :cyan]
		choice = gets.chomp
		case choice.downcase
		when "yes"
			get_definition()
		when "no"
			puts Paint["Alrighty then. Thanks for playing!", :cyan]
		else
			puts Paint["I didn't understand that. Could you answer 'yes' or 'no'?", :red]
		end
	end

end