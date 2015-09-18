class Customer

	def initialize(kontonummer,nachname,strasse,ort)	
		@bank_account = kontonummer
		@lastname = nachname
		@street = strasse
		@where = ort
	end

	def print_adress
		puts "#{"Konto" .ljust(40, '.')}#{@bank_account}"
		puts "#{"Name" .ljust(40, '.')}#{@lastname}"
		puts "#{"strasse" .ljust(40, '.')}#{@street}"
		puts "#{"ort" .ljust(40, '.')}#{@where}"

	end
	
end
kunde1 = Customer.new("22145","kaakschlief","Krogstraße","Hamburg")
puts kunde1.print_adress		
