#include <stdio.h>
#include <string.h>
#include <stddef.h> 
#include <stdlib.h>

size_t ft_strlen(const char *s);
char *ft_strcpy(char *restrict dst, const char *restrict src);


void main(){
    // const char* msg = "Hello, World!";
    char *dst = malloc(100);
    char *src = "Hello, World!";

    char *ret;

    ret = ft_strcpy(dst, src);
    ret[13] = 0;
    // size_t len = ft_strlen(0);
    // size_t len2 = strlen(0);
    printf("Length of string: %s\n",ret);
}