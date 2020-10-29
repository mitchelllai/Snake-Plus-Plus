#include "model.hxx"
#include <catch.hxx>

struct Random_test_access : ge211::Random{};


TEST_CASE("example test")
{
    CHECK( 1 + 1 == 2 );
}

TEST_CASE("snake eats green or yellow food, snake elongates")
{
    Geometry geo;
    Random_test_access rng;
    Model m(geo, rng);

    m.active_food_.fq_ = Food_Quality::normal;
    int exp_score = 1;

    m.snake_.snake_container_[0] = {m.active_food_.pos_, {0,0}};
    CHECK(m.snake_.hits_food(geo, m.active_food_));
    m.update();

    CHECK(m.score_ == exp_score);
    CHECK(m.snake_.snake_container_.size() == 2);

    m.update();

    m.active_food_.fq_ = Food_Quality::power_up;
    int exp_score_2 = 2;

    m.snake_.snake_container_[0] = {m.active_food_.pos_, {0,0}};
    CHECK(m.snake_.hits_food(geo, m.active_food_));
    m.update();
    CHECK(m.score_ == exp_score_2);
    CHECK(m.snake_.snake_container_.size() == 3);


}

TEST_CASE("snake power up")
{
    Geometry geo;
    Random_test_access rng;
    Model m(geo, rng);

    m.launch();
    m.snake_.snake_container_[0].velocity_ = {5, 0};
    m.active_food_ = Food(rng, geo);
    m.active_food_.fq_ = Food_Quality::power_up;
    m.snake_.snake_container_[0].pos_ = m.active_food_.pos_;

    ge211::Dimensions original_velocity_ = m.snake_.snake_container_[0].velocity_;

    for (int i = 0; i < 300; ++i)
    {
        m.snake_.live_ = true;
        m.update();
        m.snake_.snake_container_[0].pos_ = {5, 5};
        CHECK(m.snake_.snake_container_[0].velocity_ == 2 * original_velocity_);
    }

    m.update();
    m.snake_.snake_container_[0].pos_ = {5, 5};
    m.snake_.turn_right();
    m.update();
    CHECK(m.snake_.snake_container_[0].velocity_ == original_velocity_);

}

TEST_CASE("snake hits wall, dies")
{
    Geometry geo;
    Random_test_access rng;
    Model m(geo, rng);

    // Hits Top
    m.snake_.snake_container_[0] = {{10, 0}, {0, -5}};
    CHECK(m.snake_.hits_top(geo));
    // Hits Bottom
    m.snake_.snake_container_[0] = {{10, geo.scene_dims_.height}, {0,5}};
    CHECK(m.snake_.hits_bottom(geo));

    // Hits Left Side
    m.snake_.snake_container_[0] = {{0, 10}, {-5, 0}};
    CHECK(m.snake_.hits_side(geo));

    m.snake_.snake_container_[0] = {{geo.scene_dims_.width, 10}, {5,0}};
    CHECK(m.snake_.hits_side(geo));
}

TEST_CASE("snake starts out stationary")
{
    Geometry geo;
    Random_test_access rng;
    Model m(geo, rng);

    ge211::Dimensions exp_velo = {0,0};
    CHECK(m.snake_.velocity_ == exp_velo);

    m.update();
    CHECK(m.snake_.velocity_ == exp_velo);

}

TEST_CASE("snake velocity remains constant through updates, barring any turns")
{
    Geometry geo;
    Random_test_access rng;
    Model m(geo, rng);

    // Moving Right
    m.snake_.velocity_ = {5,0};
    ge211::Dimensions exp_velo = {5,0};
    m.update();
    CHECK(m.snake_.velocity_ == exp_velo);

    // Moving Left
    m.snake_.velocity_ = {-5,0};
    ge211::Dimensions exp_velo_2 = {-5,0};
    m.update();
    CHECK(m.snake_.velocity_ == exp_velo_2);

    // Moving Down
    m.snake_.velocity_ = {0,5};
    ge211::Dimensions exp_velo_3 = {0,5};
    m.update();
    CHECK(m.snake_.velocity_ == exp_velo_3);

    // Moving Up
    m.snake_.velocity_ = {0,-5};
    ge211::Dimensions exp_velo_4 = {0,-5};
    m.update();
    CHECK(m.snake_.velocity_ == exp_velo_4);

}

TEST_CASE("Not powered-up snake hits deadly food, dies")
{
    Geometry geo;
    Random_test_access rng;
    Model m(geo, rng);

    m.active_food_.fq_ = Food_Quality::deadly;
    m.snake_.snake_container_[0] = {m.active_food_.pos_, {0,0}};
    CHECK(m.snake_.hits_food(geo, m.active_food_));
    CHECK(! m.snake_.live_);

}

TEST_CASE("powered up snake hits deadly food, elongates")
{
    Geometry geo;
    Random_test_access rng;
    Model m(geo, rng);

    m.snake_.powered_up_ = true ;
    m.launch();

    m.active_food_.pos_ = {100, 100};
    m.active_food_.fq_ = Food_Quality::deadly;
    int exp_score = 1;

    m.snake_.snake_container_[0] = {m.active_food_.pos_, {5,0}};
    CHECK(m.snake_.hits_food(geo, m.active_food_));
    m.update();
    CHECK(m.snake_.powered_up_);
    CHECK(m.snake_.live_);
    CHECK(m.score_ == exp_score);

}

TEST_CASE("snake hits self, dies")
{
    Geometry geo;
    Random_test_access rng;
    Model m(geo, rng);

    m.launch();
    m.snake_.snake_container_.push_back(Snake_Segment {m.snake_.head_pos_, m.snake_.velocity_});
    m.update();
    CHECK(!m.snake_.live_);
}

TEST_CASE("food regenerates after 300 updates")
{
    Geometry geo;
    Random_test_access rng;
    Model m(geo, rng);

    m.active_food_ = Food(rng, geo);
    Food food = m.active_food_;
    m.launch();
    for (int i  = 0; i < 300; ++i)
    {
        m.update();
    }

    CHECK(food.pos_ != m.active_food_.pos_);
}