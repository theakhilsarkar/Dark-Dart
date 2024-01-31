#include <stdio.h>


// 1
// 2 9 
// 3 8 10 
// 4 7 11 14
// 5 6 12 13 15

int main() {
    
int x = 1;
  int p = 5;

  for (int i = 1; i <= 5; i++) {

    for (int j = 1; j <= i; j++) {
      

		printf("%d ",x);

    }
	
    printf("\n");
  }

    return 0;
}
