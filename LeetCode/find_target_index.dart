class Solution {
  int searchInsert(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target) {
        return i;
      }
    }
   
  }
}

void main() {
  Solution s1 = Solution();
  print(s1.searchInsert([1, 3, 5, 6], 5));
}
