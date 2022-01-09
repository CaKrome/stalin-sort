
fn stalin_sort(slice: &[i32])-> Vec<i32> {
    if slice.is_empty() {
        let v1: Vec<i32> = Vec::with_capacity(0);
        return v1;

    }
    let mut max_value = 0;
    let mut v: Vec<i32> = Vec::with_capacity(slice.len());
    for elements in slice {
        if elements >= &max_value {
            v.push(*elements);
            max_value = *elements
        }
        else {
            println!("{} sent to Gulag", &elements)
        }
    }
    //println!("{:?}", &v);
    return v;
    
}


fn main() {
    let arra = [1, 2, 3, 4, 7, 20, 6, 30, 50, 49, 23, 233, 8, 235, 65, 237];
    println!("{:?}", arra);
    println!("{:?}", stalin_sort(&arra));
}
