void main() {
  List<int> input1 = [1, 2, 3, 9];
  int target1 = 8;
  print(hasPairWithSum1(input1, target1));
  print(hasPairWithSum2(input1, target1));
  List<int> input2 = [1, 2, 4, 4];
  int target2 = 8;
  print(hasPairWithSum1(input2, target2));
  print(hasPairWithSum2(input2, target2));
}

bool hasPairWithSum1(List<int> input, int target) {
  for (int i = 0; i < input.length; i++) {
    for (int j = i + 1; j < input.length; j++) {
      if (input[i] + input[j] == target) {
        return true;
      }
    }
  }
  return false;
}

bool hasPairWithSum2(List<int> input, int target) {
  Set<int> set = {};
  for (int i = 0; i < input.length; i++) {
    int diff = target - input[i];
    if (set.contains(diff)) {
      return true;
    }
    set.add(input[i]);
  }
  return false;
}
