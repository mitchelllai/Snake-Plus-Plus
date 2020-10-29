#include "snake.hxx"

Snake_Segment Snake_Segment::next()
{
    Snake_Segment result(*this);
    result.pos_ = result.pos_ + result.velocity_;
    return result;
}

Snake::Snake(Geometry const& geometry)
    : velocity_ { 0, 0 }
    , snake_container_ {{geometry.snake_pos0_ , {0,0}}}
    , head_pos_ (snake_container_[0].pos_)
    , powered_up_ (false)
    , power_up_mult (1)
    , live_ (false)
{}


//Movement Functions

void Snake::move()
{
    Snake_Segment temp = snake_container_[0];
    snake_container_[0] = snake_container_[0].next();

    for (int i = 1; i < snake_container_.size(); ++i)
    {
        Snake_Segment temp2 = snake_container_[i];
        snake_container_[i] = temp;
        temp = temp2;
    }
}

void Snake::turn_right ()
{
    snake_container_[0].velocity_ =  {power_up_mult * 5, power_up_mult * 0};
}

void Snake::turn_left ()
{
    snake_container_[0].velocity_ = { power_up_mult * -5, power_up_mult * 0};
}

void Snake::turn_up ()
{
    snake_container_[0].velocity_ = {power_up_mult * 0, power_up_mult * -5};
}

void Snake::turn_down ()
{
    snake_container_[0].velocity_ = {power_up_mult * 0, power_up_mult * 5};
}

//Collision Detection Functions

bool Snake::hits_food(const Geometry& geometry, Food& food)
{
    if(abs(snake_container_[0].next().pos_.x - food.pos_.x) <= geometry.snake_seg_size_ &&
       abs(snake_container_[0].next().pos_.y - food.pos_.y) <= geometry.snake_seg_size_){

        if (powered_up_)
        {
            elongate(food);
            return true;
        }

        if (food.fq_ == Food_Quality::normal) {
            elongate(food);
        } else if (food.fq_ == Food_Quality::deadly) {
            live_ = false;
        } else if (food.fq_ == Food_Quality::power_up) {
            power_up();
            snake_container_[0].velocity_ = snake_container_[0].velocity_ * 2;
            power_up_mult = 2;
            elongate(food);
        }
        return true;
    }

    return false;
}

bool Snake::hits_self(const Geometry& geometry)
{
    for (int i = 1; i < snake_container_.size(); ++i)
    {
        if ( snake_container_[i].pos_ == snake_container_[0].next().pos_) {
            live_ = false;
            return true;
        }
    }

    return false;
}

bool Snake::hits_top(const Geometry& geometry)
{
    if (snake_container_[0].next().pos_.y - geometry.snake_seg_size_/2 <= 0)
    {
        live_ = false;
        return true;
    }
    return false;
}

bool Snake::hits_bottom(const Geometry& geometry)
{
    if (snake_container_[0].next().pos_.y + geometry.snake_seg_size_/2 >= geometry.scene_dims_.height)
    {
        live_ = false;
        return true;
    }
    return false;
}

bool Snake::hits_side(const Geometry& geometry)
{
    if (snake_container_[0].next().pos_.x + geometry.snake_seg_size_/2 >= geometry.scene_dims_.width ||
        snake_container_[0].next().pos_.x - geometry.snake_seg_size_/2 <= 0)
    {
        live_ = false;
        return true;
    }
    return false;
}

void Snake::elongate(Food& food)
{
    snake_container_.insert(snake_container_.begin(), snake_container_[0].next());
}

void Snake::power_up()
{
    powered_up_ = true;
}

void Snake::power_down()
{
    powered_up_ = false;
}

Snake Snake::next()
{
    Snake result (*this);
    result.move();
    return result;
}



