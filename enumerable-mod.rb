module Enumerable

	def my_each
		return self unless block_given?
		for item in self
			yield item
		end
	end

	def my_each_with_index
		return self unless block_given?
		for index in 0...self.length
			yield self[index], index
		end
	end

	def my_select
		return self unless block_given?
		selected_array = []
		my_each { |item| selected_array.push(item) if yield item }
		selected_array
	end

	def my_all?
		if block_given?
			my_each { |item| return false unless yield item }
		else
			my_each { |item| return false unless item }
		end
	end

	def my_any?
		if block_given?
			my_each { |item| return true if yield item }
		else
			my_each { |item| return true if item }
		end
	end

	def my_none?

		if block_given?
			my_each { |item| return false if yield item }
		else
			my_each { |item| return false if item }
		end
		true
	end

	def my_count(num = nil )
		count = 0
		if block_given?
			my_each { |item| count += 1 if yield item }
		elsif num.nil?
			count = length
		else
			my_each { |item| count += 1 if item == num }
		end
		count
	end

	def my_map(proc_code)
		new_array = []
		if proc_code
			my_each { |item| new_array.push(proc_code.call(item)) }
		else
			return self
		end
		new_array
	end

	def my_inject(num = nil)
		if block_given?
			total = num.nil? ? self.shift : num
			my_each { |item| total = yield(total, item) }
			total
		end
	end

	def multiply_els
		my_inject(1) { |total, item| total * item }
	end

end
