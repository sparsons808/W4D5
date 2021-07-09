
def anagram?(str1, str2) # O(n!)
    poss_anagrams = []

    arr = str1.split("")
    new_arr = arr.permutation.to_a
    new_arr.each do |subarray|
        poss_anagrams << subarray.join
    end

    poss_anagrams.include?(str2)

end

def anagram?(str1, str2) # O(n^2)
    word1 = str1.split("")
    word2 = str2.split("")

    word1.each do |char|
        index = word2.find_index(char)
        return false if index.nil? 
        word2.delete_at(index) 
    end
    return true if word2.empty?
end


def anagram?(str1, str2) #O(n log n)
    word1 = str1.split("")
    word2 = str2.split("")

    word1.sort == word2.sort
end


def anagram?(str1, str2) #O(3n) == O(n)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str1.each_char do |char| #O(n)
        hash1[char] += 1
    end

    str2.each_char do |char| #O(n)
        hash2[char] += 1
    end

    hash1 == hash2 # O(n)
end

def anagram?(str1, str2) #O(n)
    hash = Hash.new(0)

    str1.each_char do |char|
        hash[char] += 1
    end

    str2.each_char do |char|
        hash[char] -= 1
    end

    hash.values.each do |vals|
        return false if vals != 0 
    end
    true
end

p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true