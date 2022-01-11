import std/random

proc stalin_sort(arr: seq[float64]): seq[float64] =
    if arr.len == 0:
        return arr
    var
        sorted = newSeq[float64]()
        max_v = arr[0]
    for i in arr:
        if i >= max_v:
            sorted.add(i)
            max_v = i
        else:
            echo i, " sent to Gulag"
    return sorted

randomize()
var
    r = initRand()
    sq1 = newSeq[float64]()
    #re = r.rand(100.0)
for j in 0..50:
    let re = r.rand(100.0)
    sq1.add(re)
echo sq1
echo stalin_sort(sq1)
