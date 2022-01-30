def stalin_sort(arr)
  if arr.size == 0
    return arr
  end
  max_v = arr[0]
  sorted = []
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

arrc = []
i = 0
while i < 50
  iw = Random.rand(100.0)
  arrc.push(iw)
  i += 1
end

puts arrc.inspect
puts stalin_sort(arrc).inspect
