#ifndef GLOABAL_H
#define GLOABAL_H

#include "render/render.h"

typedef struct global {
    Render_State render;
} Global;

extern Global global;

#endif