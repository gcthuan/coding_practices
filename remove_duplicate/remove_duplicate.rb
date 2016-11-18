def remove_duplicate(str)
	length = str.length
	return str if length <= 1
	tail = 1
	for i in (1..length-1)
		for j in (0..tail)
			break if str[i] == str[j]
		end
		if j == tail
			str[tail] = str[i]
			tail += 1
		end
	end
	str = str[0..tail-1]
end

puts remove_duplicate("aewawassw")