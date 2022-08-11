require 'pry-byebug'

# def bubble_sort(unsorted_array)

#     #Using nested loops so that we can run this sort until we sort the array
#     unsorted_array.each do 
#         unsorted_array.each_with_index do |element_before, index|
#             #If the index is last element then we restart the loop
#             if index == unsorted_array.length - 1
#                 next
#             end
#             #swapping elements if they are out of order
#             element_after = unsorted_array[index + 1]
#             if element_before > element_after
#                 unsorted_array[index] = element_after
#                 unsorted_array[index + 1] = element_before
#             end
#             unsorted_array
#         end
#     end
# end



def bubble_sort(unsorted_array)
    #sort checker makes stops our sort function when we have sorted the array
    sort_checker = unsorted_array.length - 1
    index = 0
    
    loop do
        # Since after n number of iterations the last element is sorted we don't need to check for it
        if index == sort_checker
            index = 0
            sort_checker -= 1
            next
            #swapping elements if they are out of order
        elsif unsorted_array[index] > unsorted_array[index + 1]
            unsorted_array[index + 1] = unsorted_array[index]
            unsorted_array[index] = unsorted_array[index + 1] 
            index += 1
        else 
            index += 1
            
        end
        # binding.pry
        break if sort_checker <= 0
    end
    unsorted_array
end



p bubble_sort([5,4,3,2,1])