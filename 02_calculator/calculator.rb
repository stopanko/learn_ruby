def add(first, second)
	first + second
end

def subtract(first, second)
  first - second
end		

def sum(array)
	sum = 0
	array.each{|i| sum += i}
	sum
end	

# def multiply(first, second)
# 	res = 1
# 	res = first * second
# end	

def multiply(*array)
	res = 1
	if array.size > 1
		array.each{|i| res *= i}
	else
		array[0].each{|i| res *= i}
	end
	res
end

def power(number,power)
	number**power || 0
end	

def factorial(n)
	fact = 1
	(1..n).step(1){|i| fact *= i}
	fact
end	