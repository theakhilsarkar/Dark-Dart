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
            List<int> l1 = [];
            print("${nums[i]} ${nums[j]} ${nums[k]}");
            l1.add(nums[i]);
            l1.add(nums[j]);
            l1.add(nums[k]);
            ans.add(l1);
          }
        }
      }
    }
    return ans;
  }
}
