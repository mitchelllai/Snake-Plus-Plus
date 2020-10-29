#include "model.hxx"

Model::Model(Geometry const& geometry, ge211::Random& rng)
    : rng_ (rng)
    , geometry_ (geometry)
    , snake_ (Snake(geometry))
    , active_food_ (rng, geometry_)
    , score_ (0)
    , food_timer_ (300)
    , power_up_timer_ (300)
{}

void Model::launch()
{
    snake_.live_ = true;
}

void Model::update()
{
    score_ = snake_.snake_container_.size() - 1;

    if (! snake_.live_)
    {
        return;
    }

    food_timer_--;

    Food food = active_food_;
    if (snake_.hits_food(geometry_, food))
    {
        if (food.fq_ == Food_Quality::power_up) {
            power_up_timer_ = 300;
            score_++;
            food_timer_ = 300;
        }
        if (food.fq_ == Food_Quality::normal)
        {
            score_++;
            food_timer_ = 300;
        }
        active_food_ = Food(rng_, geometry_);
    }

    snake_.hits_top(geometry_);
    snake_.hits_side(geometry_);
    snake_.hits_bottom(geometry_);
    snake_.hits_self(geometry_);

    if (snake_.powered_up_) {
        -- power_up_timer_;
    }

    if (power_up_timer_ == 0) {
        snake_.power_down();
        snake_.power_up_mult = 1;
        power_up_timer_ = 300;
    }

    if (food_timer_ == 0) {
        active_food_ = Food(rng_, geometry_);
        food_timer_ = 300;
    }

    snake_ = snake_.next();
}




