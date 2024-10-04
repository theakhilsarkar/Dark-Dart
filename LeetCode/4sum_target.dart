void main() {
  Solution s1 = Solution();
  List<int> num = [1, 0, -1, 0, -2, 2];
  print(s1.fourSum(num, 0));
}

class Solution {
  List<List<int>> fourSum(List<int> nums, int target) {
    List<List<int>> ans = [];
    nums.sort();
    print(nums);
    for (int i = 0; i < nums.length - 2; i++) {
      //--->

      int j = i + 1;
      int k = j + 1;
      int l = nums.length - 1;

      if (i > 0 && nums[i] == nums[i - 1]) continue; // <----

      while (k < l) {
        if (nums[i] + nums[j] + nums[k] + nums[l] == target) {
          ans.add([
            nums[i],
            nums[j],
            nums[k],
            nums[l],
          ]);
        }
      }

      //<---
    }
    return ans;
  }
}
