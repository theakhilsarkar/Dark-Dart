#include <iostream>
using namespace std;
class Employee
{
protected:
    int age;

public:
    void set()
    {
        cout << "Enter the employee Age : ";
        cin >> age;
    }
    void get()
    {
        cout << "Employe Age : " << age << endl;
    }
    Employee operator-(Employee &e2)
    {
        Employee temp;
        this->e1.age = e2.age;
        e1.age - e2.age;
    }

} int main()
{
    Employee e1, e2, e3;
    e1.set();
    e2.set();
    e3 = e1 - e2;

    e3.get();
    return 0;
}
