import scala.collection.mutable.ListBuffer
import scala.util.Random

def stalin_sort(arr: ListBuffer[Double]): Array[Double] =
    if arr.length == 0 then
        return arr.toArray
    
    var max_v = arr.head
    var sorted = new ListBuffer[Double]
    for i <- arr do
        if i >= max_v then
            sorted += i
            max_v = i
        else
            println(s"$i sent to Gulag")
    var sorted_li = sorted.toArray
    return sorted_li

end stalin_sort

@main def main(): Unit = {
    var ss = new ListBuffer[Double]
    var t = 0
    while t < 50 do
        var rr = 100 * Random.nextDouble()
        ss += rr
        t = t + 1
    var srr = ss.toArray
    println("[" + srr.mkString(", ") + "]")
    println("[" + stalin_sort(ss).mkString(", ") + "]")
}