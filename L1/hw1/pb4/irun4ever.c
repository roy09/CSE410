#include <stdio.h>
#include <unistd.h>

int main() {

    int seconds = 1;
    while(1) {
        sleep(1);
        printf("Running for %d seconds now\n",seconds);
        seconds++;
    }
    return 0;
}

