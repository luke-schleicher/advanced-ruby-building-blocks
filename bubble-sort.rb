def bubble_sort(array)
	begin
		times_swapped = 0
		array.each_with_index do |num, index|
			if index == array.length - 1
				break
			elsif num > array[index+1]
				array[index], array[index+1] = array[index+1], array[index]
				times_swapped += 1
			end
		end
	end while times_swapped > 0
	puts array
end

numbers = [4,3,78,2,0,2]

bubble_sort(numbers)