#include <stdio.h>
#include <string.h>
#include <stddef.h>
#include <stdlib.h>

size_t ft_strlen(const char *s);
char *ft_strcpy(char *restrict dst, const char *restrict src);

// Function to compare the behavior of ft_strcpy with strcpy
void test_strcpy(const char *test_str)
{
    char original_dst[1024];
    char custom_dst[1024];

    // Use strcpy and ft_strcpy to copy test_str to respective destination arrays
    char *original_return = strcpy(original_dst, test_str);
    char *custom_return = ft_strcpy(custom_dst, test_str);
    printf("Original: %s\n", original_dst);
    printf("Custom: %s\n", custom_dst);
    // Compare the copied strings and the return values
    if (strcmp(original_dst, custom_dst) == 0 && original_return == original_dst && custom_return == custom_dst)
    {
        printf("Test passed for \"%s\"\n", test_str);
    }
    else
    {
        printf("Test failed for \"%s\"\n", test_str);
    }
}

void main()
{
    // Test cases

    // Test with empty string
    test_strcpy("");
    test_strcpy("Hello, World!");                                                 // Test with normal string
    test_strcpy("This is a longer string containing multiple words and spaces."); // Test with longer string
    test_strcpy("\n\t\r\0\xFF");                                                  // Test with string containing escape sequences and null byte
}