import Math;

class Stalin_sort {
    static public function stalin_sort(arr: Array<Float>): Array<Float> {
        if (arr.length == 0) {
            return arr;
        }
        var max_v = arr[0];
        var sorted = new Array();
        
        for (i in arr) {
            if (i >= max_v) {
                sorted.push(i);
                max_v = i;
            }
            else {
                Sys.println('$i sent to Gulag');
            }
        }
        return sorted;
    }

    static public function main():Void {
        var aeg = new Array();
        for (j in 0...50) {
            var ss = 100 * Math.random();
            aeg.push(ss);
        }
        Sys.println(aeg);
        Sys.println(stalin_sort(aeg));
    }
}