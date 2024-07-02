class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> l1 = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          l1.add(i);
          l1.add(j);
        }
      }
    }
    return l1;
  }
}

void main() {
  Solution s1 = Solution();
  print(s1.twoSum([3, 2, 4], 8));
}
