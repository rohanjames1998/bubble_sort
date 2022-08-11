def bubble_sort(unsorted_array)
    #sort checker makes stops our sort function when we have sorted the array
    sort_checker = unsorted_array.length - 1
    index = 0
    
    loop do
        # Since after n number of iterations the last element is sorted we don't need to check for it
        # next keyword is to avoid comparing last element with nil value
        if index == sort_checker
            index = 0
            sort_checker -= 1
            next
        end
        # Assigning elements variables so we can avoid duplication when swapping them
        element_before = unsorted_array[index]
        element_after = unsorted_array[index + 1]
        #swapping elements if they are out of order
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

