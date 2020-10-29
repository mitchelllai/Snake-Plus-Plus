#pragma once

#include <ge211.hxx>
#include "geometry.hxx"
#include "food.hxx"
#include <vector>

struct Snake_Segment
{
    ge211::Position pos_;
    ge211::Dimensions velocity_;

    Snake_Segment next();
};

struct Snake
{
    //Constructor
    Snake(Geometry const&);

    //
    //Functions for collision detection
    //

    //Compares position of snake head and food. Sets this.live_ to false if detects collision.
    bool hits_food(Geometry const&, Food&);

    //Compares position of snake head and side, top, bottom margins. Sets this.live_ to false if detects collision.
    bool hits_side(Geometry const&) ;
    bool hits_top(Geometry const&) ;
    bool hits_bottom(Geometry const&) ;

    //Compares position of snake head and positions of all segments in its vector;
    bool hits_self(Geometry const&);

    //Elongates the snake
    void elongate(Food& food);

    //Powers up the snake
    void power_up();

    //Powers down the snake
    void power_down();

    //
    //Functions for changing movement direction
    //
    void turn_right ();
    void turn_left ();
    void turn_up ();
    void turn_down ();

    //Function that determines how the position of each segment changes
    void move();

    //Returns snake at the state after render. Can also be used to get new Snake object.
    Snake next();

    //
    //Member Variables
    //

    //Vector that contains the position of every snake segment
    std::vector<Snake_Segment> snake_container_;

    //Position of the head of the snake
    ge211::Position head_pos_;

    //Snake's velocity
    ge211::Dimensions velocity_;

    //Snake is alive if live == true. Dead otherwise.
    bool live_;

    //Is the snake in the powered up state?
    bool powered_up_;

    //Power up velocity multiplier
    int power_up_mult;

};
