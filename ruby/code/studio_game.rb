class Game

	def initialize(title)
		@title = title
		@player = []	
	end	

	def add_player(player)
		@player << player
	end

	def play
		puts "There are #{@player.size} players in Knuckleheads"
		@player.each do |volk|
		  volk.to_s
		end # Ende von do
		@player.each do |ausgabe|	
			ausgabe.blam 
			ausgabe.w00t
			ausgabe.w00t
			ausgabe.to_s
		end	
	end	 # Ende Methode def play
end    # auf die Klassse bezogen (ende)


class Player 
 	attr_reader :health 
 	attr_accessor :name 
 
 
 	def initialize(pname, phealth=100) 
 		@name = pname 
 		@health = phealth 
 	end 
 
 
 	def to_s 
 	puts "Ich bin #{@name} mit einem Wert von #{@health} und einem Score von #{score}" 
 	end 
 
 
	def blam 
 		@health -=10 
 		puts "#{@name} wurde geblamt!!!" 
 	end 
 	def w00t 
 		@health += 10 
 		puts "#{@name} wurde gew00tet!!!! Aktueller Stand: #{@health}" 
 	end 
 
 
 	def score 
 		@health + @name.length 
 	end 
 end 
 player1 = Player.new('Theo', 5) 
 player2 = Player.new('Peter') 
 player3 = Player.new('Rolf')
obj_game = Game.new('Sackkartoffeln')
obj_game.add_player(player1)
obj_game.add_player(player2)
obj_game.add_player(player3)
obj_game.play
