// Time  : O(N)
// Space : O(1)

bool canEditOneAway(String a, String b) {
  if ((a.length - b.length).abs() > 1) return false;

  var i = 0;
  var k = 0;
  var hasEdited = false;
  while (i < a.length && k < b.length) {
    if (a[i] != b[k]) {
      if (hasEdited) return false;
      if (a.length > b.length) {
        k--;
      } else if (a.length < b.length) {
        i--;
      }
      hasEdited = true;
    }
    i++;
    k++;
  }
  return true;
}
