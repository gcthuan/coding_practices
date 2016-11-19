def is_prime(num)
    if num <= 1
        return false
    elsif num <= 3
        return true
    elsif num % 2 == 0 || num % 3 == 0
        return false
    else
        #test every numbers in form of 6k+-1 (prime)
        #if it divides any prime numbers between 5..sqrt(num), it is not a prime number
        i = 5
        while i <= Math.sqrt(num)
            if num % i == 0 || num % (i + 2) == 0
                return false
            else
                i += 6
            end
        end
    end
    return true
end