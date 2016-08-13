def bubble_sort(array)
	complete = 0
	until complete == array.length-1
		complete = 0

		(0..array.size-2).each_with_index do |num, index|
			index_two = index+1
			
			if array[index] > array[index_two]
				array[index], array[index_two] = array[index_two], array[index]
			else
				complete += 1
			end
		end
	end
	print array
end

def bubble_sort_by(array)
	complete = 0
	until complete == array.length-1
		complete = 0

		(0..array.size-2).each_with_index do |num, index|
			index_two = index+1
			
			if yield(array[index], array[index_two]) > 0
				array[index], array[index_two] = array[index_two], array[index]
			else
				complete += 1
			end
		end
	end
	print array
end



bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end