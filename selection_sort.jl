function find_smallest(array_example)
    smallest = array_example[1]
    smallest_index = 1
    for i = 2 : size(array_example)[1]
        if array_example[i] < smallest
            smallest = array_example[i]
            smallest_index = i
        end
    end
    return smallest_index
end

function selection_sort(array_example)
    new_array = []
    for i in 1:length(array_example)
        smallest = find_smallest(array_example)
        # println(smallest)
        # println(array_example[smallest])
        push!(new_array, array_example[smallest])
        deleteat!(array_example, smallest)
    end
    return new_array
end

my_list = [2,5,6,100,3,4,5,10,12,0,34]
println(selection_sort(my_list))