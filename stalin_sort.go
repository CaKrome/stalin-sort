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
	var ini_arr_float []float64
	for i := 0; i < 50; i++ {
		initial_array := 100 * rand.Float64()
		ini_arr_float = append(ini_arr_float, initial_array)
	}
	fmt.Println(ini_arr_float)
	fmt.Println(stalin_sort(ini_arr_float))

}
