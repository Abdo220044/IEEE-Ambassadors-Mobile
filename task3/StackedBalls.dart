import 'dart:math';

double stackHeight2d(int cells) {
  if (cells == 0) return 0.0;
  return (cells - 1) * (sqrt(3) / 2) + 1.0;
}
