int findQuadrant(int x, int y) {
  if (x > 0 && y > 0) {
    return 1;
  } else if (x < 0 && y > 0) {
    return 2;
  } else if (x < 0 && y < 0) {
    return 3;
  } else if (x > 0 && y < 0) {
    return 4;
  } else {
    throw ArgumentError('x and y should be non-zero integers.');
  }
}

void main() {
  print(findQuadrant(1, 2)); // Output: 1
  print(findQuadrant(3, 5)); // Output: 1
  print(findQuadrant(-10, 100)); // Output: 2
  print(findQuadrant(-1, -9)); // Output: 3
  print(findQuadrant(19, -56)); // Output: 4
}