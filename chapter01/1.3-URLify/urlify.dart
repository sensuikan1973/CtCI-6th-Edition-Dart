// Time  : O(N)
// Space : O(N)

String urlify(String str, int trueLength) {
  var spaceCount = 0;
  for (var i = 0; i < trueLength; i++) {
    if (str[i] == ' ') spaceCount++;
  }

  final list = List<String>(trueLength + spaceCount * 2);
  var pointer = list.length - 1;

  for (var i = trueLength - 1; i >= 0; i--) {
    if (str[i] == ' ') {
      list[pointer] = '0';
      list[pointer - 1] = '2';
      list[pointer - 2] = '%';
      pointer -= 3;
    } else {
      list[pointer] = str[i];
      pointer--;
    }
  }

  return list.join('');
}
