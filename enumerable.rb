module Enumerable
	def my_each
		current_index = 0
		while current_index < self.size
			yield self[current_index]
			current_index += 1
		end
	end

	def my_each_with_index
		current_index = 0
		while current_index < self.size
			yield self[current_index], current_index
			current_index += 1
		end
	end

	def my_select
		current_index = 0
		new_array = []
		while current_index < self.size
			new_array << self[current_index] if yield self[current_index]
			current_index += 1
		end
		return new_array
	end

	def my_all?
		current_index = 0
		while current_index < self.size
			if yield self[current_index]
				result = true
				current_index += 1
			else
				result = false
				break
			end
		end
		return result
	end

	def my_any?
		current_index = 0
		while current_index < self.size
			if yield self[current_index]
				result = true
				break
			else
				result = false
				current_index += 1
			end
		end
		return result
	end

	def my_none?
		current_index = 0
		while current_index < self.size
			if yield self[current_index]
				result = false
				break
			else
				result = true
				current_index += 1
			end
		end
		return result
	end

	def my_count
		current_index = 0
		count = 0
		while current_index < self.size
			if yield self[current_index]
				count += 1
			end
			current_index += 1
		end
		return count
	end

	def my_map
		current_index = 0
		new_array = []
		while current_index < self.size
			value = yield self[current_index]
			new_array << value
			current_index += 1
		end
		return new_array
	end

	def my_inject(starting_num)
		current_index = 0
		total = starting_num
		while current_index < self.size
			total = yield total, self[current_index]
			current_index += 1
		end
		return total
	end

end

def multiply_els(array)
	puts array.my_inject(1) {|total, num| total * num}
end

multiply_els([5,2,7,8,2,4])