def deaf_grandma()
	while true
		puts "What do you want to say to Granny dear?"
		tell_grandma = gets.chomp

		if tell_grandma === "BYE"
			puts "See ya later Deary!"
			break
		elsif tell_grandma.upcase != tell_grandma
			puts "Huh?! Speak up, Granny can't hear ya sonny!"
		else
			puts "Nope, not since 1938!"
		end
	end
end