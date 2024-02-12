#include <SFML/Graphics.hpp>
#include <iostream>
#include <vector>
#include <cmath>

const double pi = 3.14159265359;

const double g = 9.81;

sf::RenderWindow window(sf::VideoMode(1500, 750), "SFML works!");

double degreesToRadians(double x) {
    return x * pi / 180;
}

double Rounding(double x, double r) {
    return std::round(x / r) * r;
}

double max2(double a, double b) {
    if (a > b) return a;
    return b;
}

double TimeOfFlight(double u, double angle, double z) {
    double u_z = u * std::sin(degreesToRadians(angle));
    double D = u_z * u_z + 2 * g * z;
    double x2 = (-u_z - std::sqrt(D)) / (-g);

    return x2;

}

double MaxHeight(double u) {
    double t = 0.5f * TimeOfFlight(u, 90, 0);
    return (u * t - 0.5f * g * t * t);
}

void DrawParabola(std::vector <double> Position, double u, double horizontal_angle, double vertical_angle, double Time, double D_TIME, sf::Color Colour, sf::Color TraceColour, double TimeCollision) {
    //std::ios_base::sync_with_stdio(false);
    std::vector <double> InitialPosition(3);
    InitialPosition[0] = Position[0] + 0.0f;
    InitialPosition[1] = Position[1] + 0.0f;
    InitialPosition[2] = Position[1] + 0.0f;

    double u_x = std::cos(degreesToRadians(vertical_angle)) * std::cos(degreesToRadians(horizontal_angle)) * u;
    double u_y = std::cos(degreesToRadians(vertical_angle)) * std::cos(degreesToRadians(90 - horizontal_angle)) * u;
    double u_z = std::sin(degreesToRadians(vertical_angle)) * u;
    for (double t = D_TIME; t <= Time; t += D_TIME) {
        double s_x = u_x * t;
        double s_y = u_y * t;
        double s_z = u_z * t - (0.5 * g * std::pow(t, 2));
        std::vector <double> NewPosition(3);
        NewPosition[0] = InitialPosition[0] + s_x;
        NewPosition[1] = InitialPosition[1] + s_y;
        NewPosition[2] = InitialPosition[2] - s_z;
        sf::VertexArray lines(sf::LinesStrip, 2);
        lines[0].position = sf::Vector2f(Position[0], Position[1]);
        lines[0].color = TraceColour;
        lines[1].position = sf::Vector2f(NewPosition[0], NewPosition[2]);
        lines[1].color = TraceColour;

        window.draw(lines);
        Position[0] = NewPosition[0] + 0.0f;
        Position[1] = NewPosition[1] + 0.0f;
        Position[1] = NewPosition[2] + 0.0f;

        //std::cout << Position[0] << ' ' << Position[1] << ' ' << Position[2] << std::endl;


    }
    sf::CircleShape shape(10.f);
    shape.setFillColor(Colour);
    shape.setPosition(Position[0] - 10, Position[1] - 10);
    window.draw(shape);
    if (Time == TimeCollision) std::cout << "Collision!\n";


}

void DrawLine(std::vector <double>& InitialPosition, double InitialVelocity, double InitialAngle, double Time, double D_TIME, sf::Color Colour, sf::Color TraceColour) {
    std::vector <double> Position(2);
    Position[0] = InitialPosition[0];
    Position[1] = InitialPosition[1];
    double u_x = std::cos(degreesToRadians(InitialAngle)) * InitialVelocity;
    double u_y = std::sin(degreesToRadians(InitialAngle)) * InitialVelocity;
    for (double t = D_TIME; t <= Time; t += D_TIME) {
        double s_x = u_x * t;
        double s_y = u_y * t;
        std::vector <double> NewPosition(2);
        NewPosition[0] = InitialPosition[0] + s_x;
        NewPosition[1] = InitialPosition[1] - s_y;
        sf::VertexArray lines(sf::LinesStrip, 2);
        lines[0].position = sf::Vector2f(Position[0], Position[1]);
        lines[0].color = TraceColour;
        lines[1].position = sf::Vector2f(NewPosition[0], NewPosition[1]);
        lines[1].color = TraceColour;

        window.draw(lines);

        Position[0] = NewPosition[0] + 0.0f;
        Position[1] = NewPosition[1] + 0.0f;



    }
    sf::CircleShape shape(10.f);
    shape.setFillColor(Colour);
    shape.setPosition(Position[0] - 10, Position[1] - 10);
    window.draw(shape);


}
double GetAngleOnThePlane(double x, double y) {
    if (x == 0) {
        if (y < 0) return 270;
        if (y > 0) return 90;
    }
    double abs_x = abs(x);
    double result = std::atan(y / abs_x) * 180 / pi;
    if (x < 0) result = 180 - result;
    return result;

}


void LinePoint2D(double v, double a, std::vector <double> Position, double& result_angle, double& time) {
    result_angle = GetAngleOnThePlane(Position[0], Position[1]);
    double S = std::sqrt(Position[0] * Position[0] + Position[1] * Position[1]);
    double t_a = v / a;
    //double t_a = 0;
    double S_a = v / 2 * t_a;
    S -= S_a;
    time = (S / v) + t_a;
}


bool LineParabola2D(double u1, double a, double u2, double starting_angle1, double angle2, double C, std::vector <double> Position1, std::vector <double> Position2, double& result_angle, double Step, double& CollisionTime, double& WaitTime, std::vector<double>& CollisionPosition, double FuelAmount, double FuelPrice) {
    double x_0 = Position2[0] - Position1[0];
    double y_0 = Position2[1] - Position1[1];
    std::cout << Position2[0] << std::endl;

    std::cout << x_0 << ';' << y_0 << std::endl;
    double u_x2 = u2 * std::cos(degreesToRadians(angle2));
    double u_y2 = u2 * std::sin(degreesToRadians(angle2));
    std::cout << u_x2 << ' ' << u_y2 << std::endl;
    double Time = TimeOfFlight(u2, angle2, Position2[1]);//Get the time of colission of a Balistic Missile with the ground
    result_angle = -90;
    CollisionTime = -1;
    WaitTime = -1;
    CollisionPosition[0] = -1;
    CollisionPosition[1] = -1;



    for (double t = 0; t < Time; t += Step) {
        double s_x = u_x2 * t;
        double s_y = u_y2 * t - 0.5 * g * t * t;
        double x = x_0 + s_x;
        double y = y_0 + s_y;


        double angle1 = 0, time1 = -1;
        std::cout << "t = " << t << std::endl;
        std::vector <double> CurrentPosition(2);
        CurrentPosition[0] = x;
        CurrentPosition[1] = y;
        LinePoint2D(u1, a, CurrentPosition, angle1, time1);
        std::cout << "x: " << x << "  y: " << y << std::endl;
        std::cout << angle1 << "->" << time1 << std::endl;
        if (angle1 != angle1) continue; // check the collision with the suroundings for the projectile, fired at an angle = angle1, with g = 0
        std::cout << "Fuel Amount needed: " << time1 * FuelPrice << std::endl;
        if (time1 * FuelPrice > FuelAmount) continue;
        if (time1 <= t && angle1 != -90) {
            double Rotation = abs(starting_angle1 - angle1);
            double RotationTime = Rotation / C;
            std::cout << "Rotation: " << Rotation << " RotationTime: " << RotationTime << std::endl;
            WaitTime = t - time1;
            if (WaitTime >= RotationTime) {
                result_angle = angle1;
                CollisionTime = t;
                CollisionPosition[0] = x;
                CollisionPosition[1] = y;
                break;
            }

        }


    }
    if (CollisionTime > 0) return true;
    return false;
}




int main()
{
    std::ios_base::sync_with_stdio(false);
    sf::CircleShape Point(10.f);
    Point.setFillColor(sf::Color::Green);
    std::vector <double> PointPosition(2);
    PointPosition[0] = 100;
    PointPosition[1] = 100;
    Point.setPosition(PointPosition[0] - 10, PointPosition[1] - 10);

    std::vector <double> Position1(2);
    Position1[0] = 0;
    Position1[1] = 750;
    double VerticalAngle1 = 45;
    double U1 = 135;
    double D_TIME = 0.01f;
    double Time = 0.0f;


    std::vector <double> Position2(2);
    Position2[0] = -150;
    Position2[1] = 0;
    double VerticalAngle2 = 15;
    double U2 = 75;

    double time1, time2;
    double CollisionTime = 0, WaitTime;
    std::vector <double> CollisionPosition(2);
    std::vector<double>RemakePosition2(3);
    RemakePosition2[0] = Position2[0];
    RemakePosition2[1] = 750 - Position2[1];
    

    std::vector<double>RemakePosition1(3);
    RemakePosition1[0] = Position1[0];
    RemakePosition1[1] = 750 - Position1[1];
    double ResultVerticalAngle;
    double c_v = 10;
    bool f = LineParabola2D(U1, 10000000,  U2, VerticalAngle1, VerticalAngle2, 5, RemakePosition1, RemakePosition2, ResultVerticalAngle, 0.1f, CollisionTime, WaitTime, CollisionPosition, 100, 0);
    std::cout << ResultVerticalAngle << ' ' << CollisionTime << std::endl;

    while (window.isOpen())
    {
        Time += D_TIME;

        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();

        }


        window.clear();


        if (Time == Rounding(CollisionTime, 0.01f)) std::cout << "Collision\n";

        /*DrawParabola(Position1, U1, ResultHorizontalAngle, ResultVerticalAngle, Time - WaitTime, D_TIME, sf::Color::Yellow, sf::Color::Blue, 0);
        DrawParabola(Position2, U2, HorizontalAngle2, VerticalAngle2, Time, D_TIME, sf::Color::Yellow, sf::Color::Bl*/
        //window.draw(Point);
        DrawParabola(Position2, U2, 0, VerticalAngle2, Time, 0.1f, sf::Color::Green, sf::Color::Yellow, 0);
        DrawLine(Position1, U1, ResultVerticalAngle, Time - WaitTime, D_TIME, sf::Color::Green, sf::Color::Yellow);

        //std::cout << Time << std::endl;
        window.display();
    }

    return 0;
}