#include "controller.hxx"

using namespace ge211;

Controller::Controller(Geometry const& geometry)
    : model_ (geometry, get_random())
    , view_ (model_)
    , start_of_game_ (true)
{}

ge211::Dimensions Controller::initial_window_dimensions() const
{
    return model_.geometry_.scene_dims_;
}

std::string Controller::initial_window_title() const
{
    return "Snake++";
}

void Controller::draw(ge211::Sprite_set& sprites)
{
    view_.draw(sprites);
    if (!start_of_game_ && !model_.snake_.live_)
    {
        sprites.add_sprite(blank_screen_, {0, 0}, 1);
        view_.number_sprite_.reconfigure(ge211::Text_sprite::Builder({"sans.ttf", 100}) << "Score: " << model_.score_);
        sprites.add_sprite(view_.number_sprite_, {model_.geometry_.scene_dims_.width/2 - 200, model_.geometry_.scene_dims_.height/2 - 50}, 2);
    }
}

void Controller::on_frame(double)
{
    model_.update();
}



void Controller::on_key(ge211::Key key)
{
    if (key == ge211::Key::up())
    {
        if (start_of_game_)
        {
            model_.launch();
            start_of_game_ = false;
        }
        model_.snake_.turn_up();
    }

    if (key == ge211::Key::down())
    {
        if (start_of_game_)
        {
            model_.launch();
            start_of_game_ = false;
        }
        model_.snake_.turn_down();
    }

    if (key == ge211::Key::left())
    {
        if (start_of_game_)
        {
            model_.launch();
            start_of_game_ = false;
        }
        model_.snake_.turn_left();
    }

    if (key == ge211::Key::right())
    {
        if (start_of_game_)
        {
            model_.launch();
            start_of_game_ = false;
        }
        model_.snake_.turn_right();
    }

    if (key == ge211::Key::code(' '))
    {
        if (!start_of_game_ && !model_.snake_.live_)
        {
            model_.snake_ = Snake(Geometry());
            start_of_game_ = true;
        }
    }


}



