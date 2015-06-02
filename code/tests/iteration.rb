def iteration(array)

	i = 0

	response = []

	response << "\n -- while -- \n"

	while i < array.size do
		response << array[i]
		i += 1
	end

	response << "\n -- for -- \n"

	for i in array do
		response << i
	end

	response << "\n -- each -- \n"

	array.each do |i|
		response << i
	end

	response << "\n -- size.times -- \n"

	array.size.times do |i|
		response << array[i]
	end

	response << "\n -- until -- \n"

	i = 0

	until i == (array.size) do
		response << array[i]
		i += 1
	end
	response.join(" ")
end	