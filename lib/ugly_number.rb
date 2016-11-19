# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
    return false if num < 1
    #divides num to 2 until it is non divisible, do the same with 3 and 5
    num = max_divide(num, 2)
    num = max_divide(num, 3)
    num = max_divide(num, 5)
    num == 1 ? true : false
end

def max_divide(a, b)
    while a % b == 0
        a /= b
    end
    return a
end