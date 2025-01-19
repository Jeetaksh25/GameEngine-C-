#pragma once

#include <stdio.h>
#include <stdbool.h>

typedef struct file {
    char *data;
    size_t len;
    bool is_valid;
} File;

File to_file_read(const char *path);
int to_file_write(void *buffer, size_t size, const char *path);
