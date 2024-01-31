#include <stdio.h>

void printPattern() {
    int rows = 5; // Number of rows in the pattern

    // Loop through each row and column to print the pattern
    for (int i = 0; i < rows; i++) {
        int currentNumber = i + 1;

        for (int j = 0; j <= i; j++) {
            printf("%d ", currentNumber);

            // Update currentNumber based on the logic
            if (j % 2 == 0) {
                currentNumber += (rows - j);
            } else {
                currentNumber += (rows + j);
            }
        }

        printf("\n");
    }
}

int main() {
    printPattern();
    return 0;
}
