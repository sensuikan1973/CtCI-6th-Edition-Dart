// Time  : O(N)
// Space : O(N)

bool isUnique(String str) {
  if (str.length > 256) return false;
  return Set<int>.of(str.codeUnits).length == str.length;
}
