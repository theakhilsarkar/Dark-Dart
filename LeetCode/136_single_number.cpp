#include <iostream>
#include <iostream>

// XOR
// 0 0 - 0
// 1 1 - 0
// 0 1 - 1
// 1 0 - 1

int singleNumber(vector<int> nums)
{
    int ans = 0;
    for (int val : nums)
    {
        ans = ans ^ val;
    }
    return ans;
}

int main()
{
    cout << singleNumber([ 2, 2, 1 ]);
    return 0;
}