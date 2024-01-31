#include <stdio.h>
// 1 
// 2 9 
// 3 8 10 
// 4 7 11 14
// 5 6 12 13 15


int main()
{
	int x = 1;
	int p = 9;
	int q = -2;

    for(int i=1; i<=5; i++)
	{
		x = i;
		for(int j=1; j<=i; j++)
		{
			if(j==1)
			{
				printf("%d ",x);
				for(int a = 1; a<x; a++)
				{
					p-=2;
					q+=2;
				}
				
			}
			else if(j==5)
			{
				x+=2;
				printf("%d ",x);
			}
			else if(j%2==0)
			{
				x = x + p;
				printf("%d ",x);
			}
			else
			{
				x = x + q;
				printf("%d ",x);
			}
		}
		p = 9;
		q = -2;
		printf("\n");
	}
    return 0;
}