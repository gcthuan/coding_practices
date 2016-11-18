# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
    return false if num < 1
    return true if num == 1
    if prime_factors(num) - [2,3,5] == []
        return true
    else
        return false
    end
end

def prime_factors(num)
    prime_factors = []
    (2..num/2).each do |i|
       if is_prime(i) && num % i == 0
           prime_factors << i
       end
    end
    return prime_factors
end

def is_prime(num)
    if num <= 1
        return false
    elsif num <= 3
        return true
    elsif num % 2 == 0 || num % 3 == 0
        return false
    else
        i = 5
        while i < Math.sqrt(num)
            if num % i == 0 || num % (i + 2) == 0
                return false
            else
                i += 6
            end
        end
    end
    return true
end

puts prime_factors(12)
puts is_ugly(12)