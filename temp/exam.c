#include<stdio.h>
main()
{
	int i,j,k;
	for(i=1; i<=4; i++)
	{
		for(k=i; k<5; k++)
		{
			printf(" ");
		}
		for(j=1; j<=i; j++)
		{
			if(j>=2)
			{
				printf(" ");
			}
			else
			{
				printf("*");
			}
		}
		for(j=i-1; j>=1; j--)
		{
			if(j>=2)
			{
				printf(" ");
			}
			else
			{
				printf("*");
			}
		}
		printf("\n");
	}
	for(i=1; i<=5; i++)
	{
		for(k=1; k<i; k++)
		{
			printf(" ");
		}
		for(j=5; j>=i; j--)
		{
			if(j<=4)
			{
				printf(" ");
			}
			else
			{
				printf("*");
			}
		}
		for(j=i+1; j<=5; j++)
		{
				if(j<=4)
			{
				printf(" ");
			}
			else
			{
				printf("*");
			}
		}
		printf("\n");
	}
}