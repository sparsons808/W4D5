# def two_sum?(arr, target_sum) 0(n^2)
#     arr.each_with_index do |num_1, idx_1|
#         arr.each_with_index do |num_2, idx_2|
#             if num_1 + num_2 == target_sum && idx_1 < idx_2
#                 return true
#             end
#         end
#     end
#     false
# end


def okay_two_sum?(arr, target_sum)
    return false if arr.size <= 1
    arr.sort!
    # first_idx = 0
    # last_idx = -1

    # while true
    # case arr[first_idx] + arr[last_idx] <=> target_sum
    case arr[0] + arr[-1] <=> target_sum
    when 0
        return true
    when -1
        # first_idx += 1 
        okay_two_sum?(arr[1..-1], target_sum)
    when 1
        # last_idx -= 1 
        okay_two_sum?(arr[0..-2], target_sum)
    end

end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false