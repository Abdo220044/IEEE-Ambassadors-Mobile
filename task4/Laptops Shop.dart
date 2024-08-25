class Laptop {
  String brand = '';
  String model = '';
  int ram = 0;
  double price = 0.0;

  void setDetails(String b, String m, int r) {
    brand = b;
    model = m;
    ram = r;

    if (brand == 'Dell') {
      price = 600 + (ram * 50);
    } else if (brand == 'HP') {
      price = 650 + (ram * 50);
    } else if (brand == 'Apple') {
      price = 800 + (ram * 50);
    } else {
      price = 500 + (ram * 50);
    }
  }

  void displayDetails() {
    print('Laptop Details:');
    print('Brand: $brand');
    print('Model: $model');
    print('RAM: ${ram} ');
    print('Price : \$${price.toStringAsFixed(2)}');
  }
}

void main() {
  Laptop laptop = Laptop();
  laptop.setDetails('Dell', 'Inspiron', 8);
  laptop.displayDetails();
}