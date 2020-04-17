// Time  : O(N)
// Space : O(N)

bool isRotation(String s1, String s2) {
  if (s1.isEmpty) return false;
  if (s1.length != s2.length) return false;
  return _isSubstring(s1 + s2, s2);
}

bool _isSubstring(String a, String b) => a.contains(b);
