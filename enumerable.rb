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

	end

end


array = ["hello", "how", "are", "you?"]

array.each