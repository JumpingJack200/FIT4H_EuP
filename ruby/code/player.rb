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