#include "geometry.hxx"

Geometry::Geometry() noexcept
    : scene_dims_ {1080, 720}
    , snake_seg_size_ { 10 }
    , food_size_ { 10 }
    , snake_pos0_ {scene_dims_.width/2 - scene_dims_.width/4, scene_dims_.height/2}
{ }