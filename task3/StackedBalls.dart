double stackHeight(int layers) {
  const double sqrt3Over2 = 0.86602540378; // Approximation of sqrt(3)/2
  if (layers == 0) return 0;
  return 1 + (layers - 1) * sqrt3Over2;
}

void main() {
  print(stackHeight(5));
}