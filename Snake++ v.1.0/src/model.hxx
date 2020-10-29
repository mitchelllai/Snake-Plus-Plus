#pragma once

#include "snake.hxx"


struct Model
{
    Model(Geometry const&, ge211::Random&);
    Geometry geometry_;
    Snake snake_;
    Food active_food_;
    ge211::Random& rng_;
    int score_;
    int food_timer_;
    int power_up_timer_;

    void launch();
    void update();
};


