#include<iostream>
using namespace std;

class Operator
{
    int num;
    public:

    void set()
    {
        cout << "Enter a num : ";
        cin >> num;
    }
    
    bool operator>(Operator op)
    {
        if(num>op.num)
        {
            return true;
        }
        else{
            return false;
        }
    }
};

int main()
{
    Operator o1,o2;
    o1.set();
    o2.set();

    if(o1>o2) // o1.operator>(o2)
    {
        cout << "O1 is max !";
    }
    else{

        cout << "O2 is max !";
    }

    return 0;
}