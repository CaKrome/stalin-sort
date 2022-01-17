extern crate rand;

fn stalin_sort(slice: &[f64]) -> Vec<f64> {
    if slice.is_empty() {
        let v1: Vec<f64> = Vec::with_capacity(0);
        return v1;
    }
    let mut max_value = 0.0;
    let mut v: Vec<f64> = Vec::with_capacity(slice.len());
    for elements in slice {
        if elements >= &max_value {
            v.push(*elements);
            max_value = *elements
        } else {
            println!("{} sent to Gulag", &elements);
        }
    }
    return v;
}

fn main() {
    let mut vv: Vec<f64> = Vec::with_capacity(50);
    let mut i = 0;
    while i < 50 {
        let x: f64 = 100.0 * (rand::random::<f64>());
        vv.push(x);
        i = i + 1
    }
    println!("{:?}", vv);
    println!("{:?}", stalin_sort(&vv));
}
