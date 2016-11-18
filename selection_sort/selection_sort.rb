def selection_sort(arr)
	n = arr.length
	for i in (0..n-1)
		min = i
		for j in (i+1..n-1)
			min = j if arr[j] < arr[min]
		end
		swap(arr, i, min)
	end
	arr
end

def swap(arr, n, m)
	temp = arr[m]
	arr[m] = arr[n]
	arr[n] = temp
end

p selection_sort([2,3,4,1,23,4,5,9,100])