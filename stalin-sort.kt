import kotlin.random.Random
fun stalin_sort(inp: ArrayList<Double>): ArrayList<Double> {
    if (inp.isEmpty()) {
        return arrayListOf<Double>()
    }
    var maxV = inp[0]
    var sorted = arrayListOf<Double>()
    for (i in inp) {
        if (i >= maxV) {
            sorted.add(i)
            maxV = i
        }
        else {
            println("$i sent to Gulag")
        }
    }
    return sorted
}

fun main(args: Array<String>) {
    var a = arrayListOf<Double>()
    for (j in 0..100) {
        var ww = Random.nextDouble(0.0, 300.0)
        a.add(ww)
    }
    println(a)
    println(stalin_sort(a))
}