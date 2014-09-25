# Rock Paper Scissors Game

require 'Pry'

puts "Welcome to Elliot's Rock, Paper, Scissors game!"
choices = {"p" => 'paper', "r" => 'rock', "s" => 'scissors'}
y = ''
comp_choice = ''
user_choice = ''

def display_winning_message(winning_choice)
	case winning_choice
	when 'paper'
		puts "Paper covers rock!"
	when 'rock'
		puts "Rock smashes scissors!"
	when 'scissors'
		puts "Scissors slashes paper!"
	end
end

while y != 'N'
	#get the user's and computer's choices
	begin 
		comp_choice = choices.values.sample
		puts "Choose one: p/r/s"
		user_choice = choices[gets.chomp]
	end until choices.has_value?(user_choice) == true
	#player wins?
	puts "You picked #{user_choice}, and computer picked #{comp_choice}."
	if (user_choice == 'paper' && comp_choice == 'rock') || (user_choice == 'rock' && comp_choice == 'scissors') || (user_choice == 'scissors' && comp_choice == 'paper')
		display_winning_message(user_choice)
		puts "You win!"
	elsif (user_choice == 'paper' && comp_choice == 'paper') || (user_choice == 'rock' && comp_choice == 'rock') || (user_choice == 'scissors' && comp_choice == 'scissors')
		puts "It's a tie!" 
	else
		display_winning_message(comp_choice)
		puts "You lose!"
	end
	puts "Would you like to continue (Y/N)?"
	y = gets.chomp.upcase!
end