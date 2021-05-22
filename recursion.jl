
function fibonacci(i)
    if i<=1
        return i
    end
    return fibonacci(i-1)+fibonacci(i-2)
end

function factorial(x)
    if x==1
        return x
    else
        return x*factorial(x-1)
    end
end

function sum(array)
    k=length(array)
    if k==0
        return 0
    end
    if k==1
        return array[k]
    end
    return array[k] + sum(array[1:k-1])
end

function get_length(array)
    if array==[]
        return 0
    end
    deleteat!(array, last(array))
    return 1 + get_length(array)
end

maximum = 0
function find_maximum(array)
    global maximum

    if length(array)==0
        return maximum
    end
    if maximum<last(array)
        maximum=last(array)
    end
    println(array)
    println(last(array))
    pop!(array)
    return find_maximum(array)
end    

k=0
g=0
t=0
function binary_search(list,item,len_list)
    global k
    global g
    global t
    if list==[]
        return 0
    end
    if t==1
        return k
    end
    if last(list)==item
        k= len_list - g
        t=1
    end
    pop!(list)
    g=g+1
    return binary_search(list, item, len_list)
end

function quick_sort(list)
    if length(list)<2
        return list
    end 
    pivot = list[1]
    greater = []
    lesser = []
    for i = 2:length(list)
        if pivot <= list[i]
            append!(greater,list[i])
        elseif  pivot > list[i]
            append!(lesser,list[i])
        end
    end
    # println(lesser)
    # println(pivot)
    # println(greater)
    return append!(quick_sort(lesser),pivot,quick_sort(greater))
end

my_list = [100,3,88,1,3,5,6,8,10,12,21,34,99]
your_list = [0,5,60,3,10,8,100,-3,200,300]
total_list = append!(my_list,your_list)
# println(binary_search(my_list, 34, length(my_list)))
println(total_list)
println(quick_sort(my_list))

# println(find_maximum([1,8,2,3,9,4,6,7]))
# println(sum([13,2,4,5,6,3]))
# println(fibonacci(6))
# println(factorial(4))