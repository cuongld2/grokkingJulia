function binary_search(list,item)
    low = 0
    high = size(list)[1]
    while low <= high
        mid = (low + high)
        guess = list[mid]
        if guess == item
            return mid
        end
        if guess > item
            high = mid - 1
        else
            low = mid + 1
        return 0 
        end
    end
end

my_list = [1,3,5,6,8,10,12,21,34]
println(binary_search(my_list, 3))
println(binary_search(my_list, 31))
println(binary_search(my_list, 34))