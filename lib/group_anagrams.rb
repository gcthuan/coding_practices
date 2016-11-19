# @param {String[]} strs
# @return {String[][]}

#split words into different groups of anagram
def group_anagrams(strs)
    return strs if strs.empty?
    result = [[strs[0]]]
    #result.each {|word| p word[0]}
    (1..strs.length-1).each do |i|
        added = false
        (0..result.length-1).each do |j|
            result[j].sort!
            if is_anagram(result[j][0], strs[i])
                result[j] << strs[i] unless result[j].include? strs[i]
                added = true
                break
            end
        end
        if added == false
            result << [strs[i]]
        end
    end
    result
end

#compare the chars count of s and t
def is_anagram(s, t)
    return false if s.length != t.length
    count_char(s) == count_char(t) ? true : false
end

#count number of chars of each word
def count_char(s)
    hash = {}
    s.each_char do |char|
        hash.has_key?(char) ? hash[char] += 1 : hash[char] = 0
    end
    hash
end