class Name
	attr_accessor :first, :last

	def full
		self.first + ' ' + self.last
	end

	def last_first
		self.last + ', ' + self.first
	end
end

class Person
	attr_accessor :name

	def initialize
		self.name = Name.new
	end
end