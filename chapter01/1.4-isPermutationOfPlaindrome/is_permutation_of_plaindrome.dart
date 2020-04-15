// Time  : O(N)
// Space : O(1)

// Bit solution

bool isPermutationOfPlaindrome(String str) {
  var bit = BigInt.zero;
  for (final codeUnit in str.toLowerCase().replaceAll(' ', '').codeUnits) {
    bit = _toggle(bit, codeUnit);
  }
  return bit == BigInt.zero || _popCountIsOne(bit);
}

BigInt _toggle(BigInt bit, int index) {
  if (index < 0) return bit;

  final mask = BigInt.one << index;
  if ((bit & mask) == BigInt.zero) {
    return bit | mask;
  } else {
    return bit & ~mask;
  }
}

bool _popCountIsOne(BigInt bit) => (bit & (bit - BigInt.one)) == BigInt.zero;
