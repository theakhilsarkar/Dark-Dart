#include <stdio.h>
// 1 
// 2 9 
// 3 8 10 
// 4 7 11 14
// 5 6 12 13 15


int main()
{
	int x = 1;
	int i,j,k;

	for(i=1; i<=6; i++)
	{
		for(k=1; k<i; k++)
		{
			printf(" ");
		}
		for(j=i; j<=6; j++)
		{
			if(x<=9)
			{
				printf("%d ",x);
			}
			else{
				if(x%2==0)
				{
					printf("0 ");
				}
				else{
					printf("9 ");
				}
			}
			x++;
		}
		printf("\n");
	}

    return 0;
}