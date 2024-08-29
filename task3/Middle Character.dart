String getMiddle(String word) {
  int length = word.length;
  int mid = length ~/ 2;

  if (length % 2 == 0) {
    return word.substring(mid - 1, mid + 1);
  } else {
    return word[mid];
  }
}
