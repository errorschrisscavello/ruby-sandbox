def compare_numbers(n, low, high)
	
	n_s = n.to_s
	low_s = low.to_s
	high_s = high.to_s

	response = ''

	if n < low
		response = "#{n_s} < #{low_s}"
	elsif n === low
		response = "#{n_s} = #{low_s}"
	elsif n > low && n < high
		response = "#{low_s} > #{n_s} < #{high_s}"
	elsif n === high
		response = "#{n_s} = #{high_s}"
	elsif n > high
		response = "#{n_s} > #{high_s}"
	end
	response
end