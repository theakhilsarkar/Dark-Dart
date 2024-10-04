

void main() {
  Solution s1 = Solution();
  List<int> num = [-2, 0, 0, 2, 2];
  // -1 + 0 + -4 = -5
  // -1 + 1 + -4 = 2
  print(s1.threeSum(num));
}

class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> ans = [];
    nums.sort();
    print(nums);
    for (int i = 0; i < nums.length - 2; i++) {
      int j = i + 1;
      int k = nums.length - 1;
      int target = 0 - nums[i];

      if (i > 0 && nums[i] == nums[i - 1]) continue;

      while (j < k) {
        if (nums[j] + nums[k] == target) {
          List<int> res = [nums[i], nums[j], nums[k]];
          while (nums[j] == nums[j + 1]) j++;
          while (nums[k] == nums[k - 1]) k--;
          ans.add(res);
          j++;
          k--;
        } else if (nums[i] + nums[j] + nums[k] > 0) {
          k--;
        } else {
          j++;
        }
      }
    }
    return ans;
  }
}

// class Solution {
//   List<List<int>> threeSum(List<int> nums) {
//     List<List<int>> ans = [];
    
//     for (int i = 0; i < nums.length; i++) {
//       for (int j = i + 1; j < nums.length; j++) {
//         for (int k = j + 1; k < nums.length; k++) {
//           if (nums[i] + nums[j] + nums[k] == 0) {
//             List<int> res = [nums[i], nums[j], nums[k]];
//             ans.add(res);
//           }
//         }
//       }
//     }

//     for (int i = 0; i < ans.length; i++) {
//       for (int k = i + 1; k < ans.length; k++) {
//         bool isDuplicate = true;
//         for (int j = 0; j < ans[i].length; j++) {
//           if (ans[i][j] != ans[k][j]) {
//             isDuplicate = false;
//             break;
//           }
//         }
//         if (isDuplicate) {
//           ans.removeAt(k);
//           k--;
//         }
//       }
//     }
//     return ans;
//   }
// }
