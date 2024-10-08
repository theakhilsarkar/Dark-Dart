// class Solution {
//   List<List<int>> combinationSum(List<int> l1, int target) {
//     List<List<int>> ans = [];

//     for (int i = 0; i < l1.length; i++) {
//       if (l1[i] == target) {
//         ans.add([l1[i]]);
//       }

//       if (target % l1[i] == 0 && l1[i] != target) {
//         int x = l1[i];
//         List<int> y = [];
//         while (x <= target) {
//           y.add(l1[i]);
//           x += l1[i];
//         }
//         if (y.isNotEmpty) {
//           ans.add(y);
//         }
//       }

//       for (int j = i + 1; j < l1.length; j++) {
//         if (l1[i] + l1[j] == target) {
//           ans.add([l1[i], l1[j]]);
//         }
//         if (l1[i] + l1[j] != target) {
//           if (l1.contains(target - (l1[i] + l1[j]))) {
//             ans.add([l1[i], l1[j], target - (l1[i] + l1[j])]);
//           }
//         }
//       }
//     }
//     return ans;
//   }
// }



// void main() {
//   Solution s1 = Solution();
//   print(s1.combinationSum([2, 3, 7], 18));
// }

// combination of sum of 7
// 0,7
// 1,6
// 2,5
// 3,4
// 4,3
