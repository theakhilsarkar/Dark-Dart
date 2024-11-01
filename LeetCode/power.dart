void main() {
  Solution s1 = Solution();
  print(s1.myPow(2.00, -2));
}

class Solution {
  double myPow(double x, int n) {
    double ans = 1.0;
    if (n > 0) {
      while (n > 0) {
        ans = ans * x;
        n--;
      }
    } else {
      n *= -1;
      while (n > 0) {
        ans = ans * x;
        n--;
      }
      ans = 1 / ans;
    }
    return ans;
  }
}



