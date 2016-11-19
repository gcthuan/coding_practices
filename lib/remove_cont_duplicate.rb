def remove_cont_duplicate(str)
	length = str.length
	return str if length <= 1
	tail = 0
	for i in (1..length-1)
		if str[tail] != str[i]
			tail += 1
			str[tail] = str[i]
		end
	end
	str = str[0..tail]
end

puts remove_cont_duplicate("avaaavvaaa")
