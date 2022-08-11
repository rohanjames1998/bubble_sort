def bubble_sort(unsorted_array)
    # Sort checker stops our sort function when we have sorted the array.
    sort_checker = unsorted_array.length - 1
    index = 0
    
    loop do
        # Since after n number of iterations the last element is sorted we don't need to check for it thats why we diminish it by 1 when we reach the end of the array.
        # Next keyword is to avoid comparing last element with nil value.
        if index == sort_checker
            index = 0
            sort_checker -= 1
            next
        end
        # Assigning elements variables so we can avoid duplication when we swap them.
        element_before = unsorted_array[index]
        element_after = unsorted_array[index + 1]
        # Swapping elements if they are out of order.
        if element_before > element_after
            unsorted_array[index] = element_after
            unsorted_array[index + 1] = element_before
            index += 1
        else 
            index += 1  
        end
        break if sort_checker < 0
    end
    unsorted_array
end

