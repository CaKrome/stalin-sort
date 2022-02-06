import std.stdio : writeln;
import std.random : uniform01;


auto stalin_sort(double[] inp) {
    if (inp.length == 0) {
        return inp;
    }
    double max_v = inp[0];
    int size = 0;
    double[] sorted = new double[size];

    foreach (double key; inp)
    {
        if (key >= max_v) {
            sorted ~= key;
            max_v = key;
        }
        else {
            writeln(key," sent to Gulag");
        }
    }
    return sorted;
}

void main(string[] args)
{
    int siz = 0;
    double[] sarr = new double[siz];
    for (int i = 0; i < 50; i++) {
        double u = uniform01();
        sarr ~= u;
    }

    writeln(sarr);
    writeln(stalin_sort(sarr));

}