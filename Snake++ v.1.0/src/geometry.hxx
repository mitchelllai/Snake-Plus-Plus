#pragma once

#include <ge211.hxx>

struct Geometry
{
    //Constructs instance of geometry
    Geometry() noexcept;

    //Dimensions of entire window
    ge211::Dimensions scene_dims_;

    //Size of single snake segment
    int snake_seg_size_;

    //Size of single piece of food
    int food_size_;

    //Initial starting position of snake
    ge211::Position snake_pos0_;
};