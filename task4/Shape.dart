class Shape {
  double area() {
    return 0.0;
  }

  double perimeter() {
    return 0.0;
  }
}

class Rectangle extends Shape {
  double width = 0.0;
  double height = 0.0;

  void setDimensions(double w, double h) {
    width = w;
    height = h;
  }

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

class Circle extends Shape {
  double radius = 0.0;

  void setRadius(double r) {
    radius = r;
  }

  double area() {
    return 3.14 * radius * radius;
  }

  @override
  double perimeter() {
    return 2 * 3.14 * radius;
  }
}

class Triangle extends Shape {
  double base = 0.0;
  double height = 0.0;

  void setDimensions(double b, double h) {
    base = b;
    height = h;
  }

  double area() {
    return 0.5 * base * height;
  }

  double perimeter() {
    return 3 * base;
  }
}

void main() {
  Rectangle rectangle = Rectangle();
  rectangle.setDimensions(7.0, 9.0);
  print('Rectangle Area: ${rectangle.area()}');
  print('Rectangle Perimeter: ${rectangle.perimeter()}');

  Circle circle = Circle();
  circle.setRadius(5.0);
  print('\nCircle Area: ${circle.area()}');
  print('Circle Perimeter: ${circle.perimeter()}');

  Triangle triangle = Triangle();
  triangle.setDimensions(5.0, 7.0);
  print('\nTriangle Area: ${triangle.area()}');
  print('Triangle Perimeter: ${triangle.perimeter()}');
}