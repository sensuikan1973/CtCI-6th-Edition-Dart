// Time  : O(N*M)
// Space : O(N + M)

List<List<int>> zeroMatrix(List<List<int>> matrix) {
  if (matrix.isEmpty) return matrix;
  final rows = List<bool>.filled(matrix.length, false);
  final cols = List<bool>.filled(matrix.first.length, false);

  for (var i = 0; i < rows.length; ++i) {
    for (var k = 0; k < cols.length; ++k) {
      if (matrix[i][k] == 0) {
        rows[i] = true;
        cols[k] = true;
      }
    }
  }

  for (var i = 0; i < rows.length; ++i) {
    for (var k = 0; k < cols.length; ++k) {
      if (rows[i]) matrix[i][k] = 0;
      if (cols[k]) matrix[i][k] = 0;
    }
  }

  return matrix;
}
