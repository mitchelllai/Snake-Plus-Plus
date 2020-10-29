#pragma once

#include "model.hxx"

class View
{
public:
    View(Model const&);
    void draw(ge211::Sprite_set&);

    Model const& model_;
    ge211::Rectangle_sprite
        snake_seg_sprite_{{model_.geometry_.snake_seg_size_, model_.geometry_.snake_seg_size_}, ge211::Color::white()};
    ge211::Rectangle_sprite
        snake_seg_powered_up_sprite_{{model_.geometry_.snake_seg_size_, model_.geometry_.snake_seg_size_}, ge211::Color::medium_yellow()};
    ge211::Rectangle_sprite
        normal_food_sprite{{model_.geometry_.snake_seg_size_, model_.geometry_.snake_seg_size_}, ge211::Color::medium_green()};
    ge211::Rectangle_sprite
        deadly_food_sprite{{model_.geometry_.snake_seg_size_, model_.geometry_.snake_seg_size_}, ge211::Color::medium_red()};
    ge211::Rectangle_sprite
        power_food_sprite{{model_.geometry_.snake_seg_size_, model_.geometry_.snake_seg_size_}, ge211::Color::medium_yellow()};
    ge211::Text_sprite number_sprite_;


};