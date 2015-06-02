def find_multiples_of(multiples, low, high)
	retval = []

	def mult?(i, m)
		(i % m == 0 && i != 0)
	end

	low..high.times do |i|
		if multiples.instance_of? Array		
			multiples.each do |m|
				retval << i if mult?(i, m)
			end
		else
			retval << i if mult?(i, multiples)
		end
	end

	retval
end

class Fixnum
	def fib
		return 0 if self == 0
		return 1 if self == 1
		return (self - 1).fib + (self - 2).fib
	end
end

def fibs(limit)
	retval = {:all => [], :odd => [], :even => [], :sum => 0}

	i = 0

	while true
		result = i.fib
		break if result >= limit
		retval[:sum] += result if (result % 2 == 0)
		retval[:odd] << result if (result % 2 != 0)
		retval[:even] << result if (result % 2 == 0)
		retval[:all] << result
		i += 1
	end

	retval
end