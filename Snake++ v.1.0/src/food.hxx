#pragma once

#include <ge211.hxx>
#include "geometry.hxx"

enum class Food_Quality{
    normal,
    deadly,
    power_up
};

struct Food {

    //Constructor
    Food(ge211::Random&, Geometry);
    Food_Quality fq_;
    ge211::Position pos_;

};

Food_Quality fq_rng (ge211::Random&);
