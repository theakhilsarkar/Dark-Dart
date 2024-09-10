void main() {
  Solution s1 = Solution();
  List<int> num = [2, 2, 2, 2, 2];
  print(s1.fourSum(num, 8));
}

class Solution {
  List<List<int>> fourSum(List<int> nums, int target) {
    List<List<int>> ans = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        for (int k = j + 1; k < nums.length; k++) {
          for (int l = k + 1; l < nums.length; l++) {
            if (nums[i] + nums[j] + nums[k] + nums[l] == target) {
              List<int> res = [nums[i], nums[j], nums[k], nums[l]];
              res.sort();
              if (!ans.contains(res)) {
                ans.add(res);
              }
            }
          }
        }
      }
    }
    return ans;
  }
}
