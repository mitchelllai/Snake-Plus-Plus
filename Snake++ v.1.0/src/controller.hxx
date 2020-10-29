#pragma once

#include "view.hxx"

class Controller : public ge211::Abstract_game
{
public:
    explicit Controller(Geometry const&);

protected:
    void draw(ge211::Sprite_set&) override;
    ge211::Dimensions initial_window_dimensions() const override;
    std::string initial_window_title() const override;
    void on_key(ge211::Key) override;
    void on_frame(double dt) override;

private:
    Model model_;
    View view_;
    bool start_of_game_;
    ge211::Rectangle_sprite
            blank_screen_{{model_.geometry_.scene_dims_.width, model_.geometry_.scene_dims_.height}, ge211::Color::black()};
};