function stain_sort(inp: Array<number>) {
    if (inp.length == 0) {
        return inp;
    }

    let max_v = inp[0];
    let sorted: Array<number> = [];

    inp.forEach(element => {
        if (element >= max_v) {
            sorted.push(element);
            max_v = element;
        }
        else {
            console.log(`${element} sent to Gulag`)
        }
    });
    return sorted;
}

let arr: Array<number> = [];
let i: number = 0;
while (i < 50) {
    arr.push(100 * Math.random());
    i++;
}
console.log(arr);
console.log(stain_sort(arr));