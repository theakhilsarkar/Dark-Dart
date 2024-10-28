class Solution {
  List<List<int>> permute(List<int> nums) {
    List<List<int>> ans = [];
    
    for(int j=0; j<nums.length; j++)
    {
      for(int i=0; i<nums.length-1; i++)
      {
        // print("$i ${i+1}");
        nums = swap(nums,i);
        ans.add(nums);
      }
      print("");
    }
    
    
    return ans;
  }
}

List<int> swap(List<int> nums,int i)
{
  int temp = nums[i];
  nums[i] = nums[i+1];
  nums[i+1] = temp;
  // print(nums);
  return nums;
}

void main() {
  Solution s1 = Solution();
  // print(s1.permute([1, 2, 3]));

  List<List<int>> ans = [];
  List<int> l1 = [1,2,3];

  for(int j=0; j<l1.length; j++)
    {
      for(int i=0; i<l1.length-1; i++)
      {
        // print("$i ${i+1}");
        l1 = swap(l1,0);
        ans.add(l1);
      }
      print("");
    }
  print(ans);
}
