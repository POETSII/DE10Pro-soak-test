#include <io.h>

int main()
{
  volatile int a[64];
  while (1) {
    volatile int i = 0;
    volatile int sum = 0;
    for (i = 0; i < 64; i++)
      sum += a[i];
  }
  //printf("hello world\n");
  return 0;
}
