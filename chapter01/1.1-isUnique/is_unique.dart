bool isUnique(String str) {
  if (str.length > 256) return false;
  return Set.from(str.codeUnits).length == str.length;
}
