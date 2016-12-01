#
def merge(left, right)
	output = []
	until left.empty? || right.empty? do
		if left.first <= right.first
			output << left.shift
		else
			output << right.shift
		end
	end
	output.concat(left).concat(right)
end

def merge_sort(arr)
	return arr if arr.length <= 1
	mid = arr.length / 2
	left = arr[0, mid]
	right = arr[mid, arr.length]
	merge(merge_sort(left), merge_sort(right))
end

arr = [3, 2, 1, 6, 7, 12, 99, 1, 2, 5]
p merge_sort(arr)