def my_min(arr) #0(n^2)
    var = 0
    arr.each_with_index do |num_1, idx_1|
        arr.each_with_index do |num_2, idx_2|
            if num_1 < num_2 && idx_1 < idx_2 && num_1 < var
                var = num_1
            end
        end
    end

    var
end


def my_min(arr) #0(n)
    longest_fish = 0

    arr.each do |num|
        if num < longest_fish
            longest_fish = num
        end
    end

    longest_fish

end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
my_min(list)  # =>  -5

# Phase I
# First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.
# What is the time complexity for this function?

# Phase II
# Now rewrite the function to iterate through the list just once while keeping track of the minimum. What is the time complexity?








# def largest_contiguous_subsum(list)#0(n^3)
#     new_arr = []

#     (0...list.length).each do |i|
#         (i...list.length).each do |j|
#             new_arr << list[i..j].sum

#         end
#     end

#     new_arr.max
# end


def largest_contiguous_subsum(list)
    current_max = list[0]
    current_sum = list[0]

    (1...list.size).each do |i|
        current_sum += list[i]
        if current_sum > current_max
            current_max = current_sum
        end

        if current_sum < 0 
            current_sum = 0
        end
        
    end

    current_max
end                         # well have to check our largest agains the sum of our array
                            #we'll have to check if our current sum is greater than our largest and reassign if true
         


list = [5, 3, -7]
list_1 = [2, 3, -6, 7, -6, 7]
list_2 = [-5, -1, -3]
p largest_contiguous_subsum(list) # => 8
p largest_contiguous_subsum(list_2) 
p largest_contiguous_subsum(list_1) 

    # possible sub-sums
    # [5]           # => 5
    # [5, 3]        # => 8 --> we want this one
    # [5, 3, -7]    # => 1
    # [3]           # => 3
    # [3, -7]       # => -4
    # [-7]          # => -7



# Phase I
# Write a function that iterates through the array and finds all sub-arrays using nested loops. First make an array to hold all sub-arrays. Then find the sums of each sub-array and return the max.

# Discuss the time complexity of this solution.

# Phase II
# Let's make a better version. Write a new function using O(n) time with O(1) memory. 
# Keep a running tally of the largest sum. To accomplish this efficient space complexity, consider using two variables. 
# One variable should track the largest sum so far and another to track the current sum. We'll leave the rest to you.

# # Get your story straight, and then explain your solution's time complexity to your TA.