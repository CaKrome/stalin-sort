def stalin_sort(arr)
  if arr.size == 0
    return arr
  end
  max_v = arr[0]
  sorted = [] of Float64
  arr.each do |i|
    if i >= max_v
      sorted.push(i)
      max_v = i
    else
      puts "#{i} sent to Gulag"
    end
  end
  return sorted
end

arrc = [] of Float64
i = 0
while i < 30
  iw = Random.rand(100.0)
  arrc.push(iw)
  i += 1
end

puts arrc
puts stalin_sort(arrc)
