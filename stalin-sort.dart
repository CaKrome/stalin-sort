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
  for (var i = 0; i < 100; i++) {
    newa.add(rdm.nextInt(1000));
  }
  var newb = [];
  for (int i in newa) {
    newb.add(i.toDouble());
  }
  print(newb);
  print(stalin_sort(newb));
}
