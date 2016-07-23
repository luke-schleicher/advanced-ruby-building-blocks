def bubble_sort(numbers)
	begin
		times_swapped = 0
		numbers.each_with_index do |number, index|
			next_index = index + 1
			next_number = numbers[next_index]
			if index == numbers.length - 1
				break
			elsif number > next_number
				numbers[index], numbers[next_index] = numbers[next_index], numbers[index]
				times_swapped += 1
			end
		end
	end while times_swapped > 0
	return numbers
end

array = [9,2,88,3,-2,0,4]

puts bubble_sort(array)