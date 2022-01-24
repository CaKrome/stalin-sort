import 'dart:math';

List stalin_sort(List arr) {
  if (arr.length == 0) {
    return arr;
  }
  var max_val = arr[0];
  var arr2 = [];
  for (var ele in arr) {
    if (ele >= max_val) {
      arr2.add(ele);
      max_val = ele;
    } else {
      print("${ele} sent to Gulag");
    }
  }
  return arr2;
}

main() {
  var rdm = new Random();
  var newa = [];
  for (var i = 0; i < 50; i++) {
    newa.add(100 * rdm.nextDouble());
  }
  print(newa);
  print(stalin_sort(newa));
}
