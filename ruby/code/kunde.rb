class Kunde

	attr_writer  :adresse
	attr_accessor :name
	attr_accessor:gehalt

	def initialize(name)
		@name = name
	end	

	def kundendaten 
		"#{@name.split.first.capitalize} #{@name.split.last.capitalize}, #{@adresse}" 
 	end 
end 






