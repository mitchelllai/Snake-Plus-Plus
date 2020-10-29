#include "food.hxx"


Food::Food(ge211::Random& number, Geometry geometry)
    : fq_ {fq_rng(number)}
    , pos_ {number.between(geometry.snake_seg_size_, geometry.scene_dims_.width - geometry.snake_seg_size_),
            number.between(geometry.snake_seg_size_, geometry.scene_dims_.height - geometry.snake_seg_size_)}
{}

Food_Quality fq_rng (ge211::Random& number)
{
    int rng = number.between(0, 2);
    if (rng == 0){
        return Food_Quality::normal;
    }
    else if (rng == 1){
        return Food_Quality::deadly;
    }
    else if (rng == 2){
        return Food_Quality::power_up;
    } else{
        return Food_Quality::normal;
    }
}
