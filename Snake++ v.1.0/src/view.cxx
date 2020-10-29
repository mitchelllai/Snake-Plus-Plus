#include "view.hxx"

View::View(Model const& model)
    : model_ (model)
    , number_sprite_(ge211::Text_sprite())
{}

void View::draw(ge211::Sprite_set& sprites) {
    if (model_.snake_.powered_up_) {
        for (Snake_Segment segment : model_.snake_.snake_container_) {
            sprites.add_sprite(snake_seg_powered_up_sprite_, segment.pos_.up_by(model_.geometry_.snake_seg_size_ / 2)
                    .left_by(model_.geometry_.snake_seg_size_ / 2));
        }
    } else {
        for (Snake_Segment segment : model_.snake_.snake_container_) {
            sprites.add_sprite(snake_seg_sprite_, segment.pos_.up_by(model_.geometry_.snake_seg_size_ / 2)
                    .left_by(model_.geometry_.snake_seg_size_ / 2));
        }
    }
    if (model_.active_food_.fq_ == Food_Quality::normal) {
        sprites.add_sprite(normal_food_sprite, model_.active_food_.pos_.up_by(model_.geometry_.snake_seg_size_ / 2)
                .left_by(model_.geometry_.snake_seg_size_ / 2));
    }
    if (model_.active_food_.fq_ == Food_Quality::deadly) {
        sprites.add_sprite(deadly_food_sprite, model_.active_food_.pos_.up_by(model_.geometry_.snake_seg_size_ / 2)
                .left_by(model_.geometry_.snake_seg_size_ / 2));
    }
    if (model_.active_food_.fq_ == Food_Quality::power_up) {
        sprites.add_sprite(power_food_sprite, model_.active_food_.pos_.up_by(model_.geometry_.snake_seg_size_ / 2)
                .left_by(model_.geometry_.snake_seg_size_ / 2));
    }
    if (model_.snake_.live_){
        number_sprite_.reconfigure(ge211::Text_sprite::Builder({"sans.ttf", 40}) << model_.score_);
        sprites.add_sprite(number_sprite_, {10, 10});
    }

}


