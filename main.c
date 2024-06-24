#include <stdio.h>
#include <string.h>
#include <stddef.h> 

size_t ft_strlen(const char *s);

void main(){
    // const char* msg = "Hello, World!";

    size_t len = ft_strlen(0);
    // size_t len2 = strlen(0);
    printf("Length of string: %ld\n", len);
}