#include "controller.hxx"

int main()
{
    Geometry const& geometry = Geometry();
    Controller main(geometry);
    main.run();
}
