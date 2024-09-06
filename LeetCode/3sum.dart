import 'dart:collection';

void main() {
  Solution s1 = Solution();
  List<int> num = [-1, 0, 1, 2, -1, -4];
  print(s1.threeSum(num));
}

class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> ans = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        for (int k = j + 1; k < nums.length; k++) {
          if (nums[i] + nums[j] + nums[k] == 0) {
            List<int> res = [nums[i], nums[j], nums[k]];
            res.sort();
            ans.add(res);
          }
        }
      }
    }

    for (int i = 0; i < ans.length; i++) {
      for (int j = 0; j < 3; j++) {
        var r1 = ans[i][j] - ans[i + 1][j] == 0;
      }
    }
    return ans;
  }
}
