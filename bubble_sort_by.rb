def bubble_sort_by (array)
	begin
		times_swapped = 0
		array.each_index do |i|
			if i == array.length - 1
				break
			else
				value = yield array[i], array[i+1]
				if value > 0
					array[i], array[i+1] = array[i+1], array[i]
					times_swapped += 1
				end
			end
		end
	end while times_swapped > 0
	puts array
end

strings = ["hi","hello","hey"]

bubble_sort_by(strings) do |first,second|
	first.length - second.length
end