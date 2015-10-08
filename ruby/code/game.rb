class Game
	def initialize(title) # diese Methode kann nur einmal erstellt werden in einer Klasse
		@title = title
		@player = []	
	end	

	def add_player(player) # hier werden Player hinzugefügt
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