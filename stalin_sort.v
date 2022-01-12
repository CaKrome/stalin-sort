import rand

fn stalin_sort(arr []f64) []f64 {
	if arr.len == 0 {
		return arr
	}
	mut max_v := arr[0]
	mut sorted := []f64{}

	for ele in arr {
		if ele >= max_v {
			sorted << ele
			max_v = ele
		} else {
			println('$ele sent to Gulag')
		}
	}
	return sorted
}

fn main() {
	mut aref := []f64{}
	for _ in 0 .. 50 {
		r := rand.f64_in_range(0.0, 100.0)
		aref << r
	}
	println(aref)
	println(stalin_sort(aref))
}
