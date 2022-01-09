package main

import (
	"fmt"
	"math/rand"
	"time"
)

func stalin_sort(array []float64) []float64 {
	if len(array) == 0 {
		return array
	}

	max_num := array[0]
	var sorted []float64

	for _, values := range array {
		if values >= max_num {
			sorted = append(sorted, values)
			max_num = values
		} else {
			fmt.Println(values, "sent to Gulag")
		}
	}
	return sorted

}

func main() {
	rand.Seed(time.Now().Unix())
	initial_array := rand.Perm(500)
	var ini_arr_float []float64
	for _, ele := range initial_array {
		ini_arr_float = append(ini_arr_float, float64(ele))
	}
	fmt.Println(ini_arr_float)
	sorted_array := stalin_sort(ini_arr_float)
	fmt.Println(sorted_array)

}
