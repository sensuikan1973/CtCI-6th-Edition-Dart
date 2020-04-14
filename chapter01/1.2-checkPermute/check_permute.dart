bool checkPermute(String a, String b) {
  if (a.length != b.length) return false;
  final soretedA = a.split('')..sort();
  final soretedB = b.split('')..sort();
  return soretedA.join('') == soretedB.join('');
}
