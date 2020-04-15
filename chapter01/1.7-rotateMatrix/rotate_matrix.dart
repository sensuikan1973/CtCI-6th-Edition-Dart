// Time  : O(N^2)
// Space : O(1)

List<List<int>> rotateMatrix(List<List<int>> matrix) {
  if (matrix.isEmpty || matrix.length != matrix.first.length) {
    throw Exception('Not square matrix');
  }
  if (matrix.length == 1) return matrix;

  for (var layer = 0; layer < matrix.length / 2; ++layer) {
    final first = layer;
    final last = matrix.length - 1 - layer;
    for (var i = first; i < last; ++i) {
      final offset = i - first;
      final top = matrix[first][i];

      // left -> top
      matrix[first][i] = matrix[last - offset][first];

      // bottom -> left
      matrix[last - offset][first] = matrix[last][last - offset];

      // right -> bottom
      matrix[last][last - offset] = matrix[i][last];

      // top -> right
      matrix[i][last] = top;
    }
  }
  return matrix;
}
