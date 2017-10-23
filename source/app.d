
void main() {
}

auto duplicar (N)(N num) {
    return num * 2;
}

// Unittest correcto.
unittest {
    double num1 = 3.0;
    float  num2 = 4.0;
    int    num3 = 5;
    short  num4 = 6;
    assert (num1.duplicar == 6.0);
    assert (num2.duplicar == 8.0);
    assert (num3.duplicar == 10);
    assert (num4.duplicar == 12);
}

auto swap (E)(ref E e1, ref E e2){
    e1 ^= e2;
    e2 ^= e1;
    e1 ^= e2;
}

// Unittest spooky.

unittest {
    int i = 0;
    int j = 1;
    int k = 2;
    swap (i, j);
    assert (i == 1 && j == 0);
    swap (k, k);
    assert (k == 2, `Hay un problema al intercambiar un elemento consigo mismo`);
}

