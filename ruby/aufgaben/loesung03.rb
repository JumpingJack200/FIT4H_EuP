class Customer
	def initialize(paccbank,plastname)
		@bank_account = paccbank
		@lastname = plastname
	end

	def initialize(pfirstname)
		@firstname = pfirstname
	end
	
	def initialize(pstreet)
		@street = pstreet
	end

	def initialize(pcity)
		@city = pcity
	end

end	

customer1 = Customer.new
customer1.initialize

puts obj.print.address("#{paccbank = "9999", pfirstname = "TheoLodgz", pstreet = "Hermelinweg7", pcity = "22159Hamburg"}")		
