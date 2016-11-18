def reverse_string(s)
	n = (s.length-1)/2
	for i in (0..n)
		swap_char(s, i, -1-i)
	end
	s
end

def swap_char(s, i, j)
	temp = s[i]
	s[i] = s[j]
	s[j] = temp
end

puts reverse_string("this is a string")