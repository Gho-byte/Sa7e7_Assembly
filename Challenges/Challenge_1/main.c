#include "stdio.h"
#include <stdint.h>
#include <stdlib.h>
#include <inttypes.h>

extern uint64_t GetNumber();

int main()
{
    uint64_t data = GetNumber();
    printf("[+] The result of GetNumber is: %" PRIu64 "\n", data);
    printf("[+] The result of GetNumber in Hex is: %" PRIx64 "\n", data);
    int rightNumber = data >> 32;
    int leftNUmber = data & 4294967295;
    printf("[+] The right number is: %i\n", rightNumber);
    printf("[+] The left number is: %i\n", leftNUmber);
    return 0;
}