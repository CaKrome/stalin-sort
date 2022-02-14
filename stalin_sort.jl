function stalin_sort(inp)
    if length(inp) == 0
        return inp
    end
    max_v = inp[1]
    sorted = []

    for i in inp
        if i >= max_v
            push!(sorted, i)
            max_v = i
        else
            println("$i sent to Gulag")
        end
    end

    return sorted
end

A = []

for j =  1:50
    R = 100 * rand(Float64)
    push!(A, R)
end

println(A)
println(stalin_sort(A))
