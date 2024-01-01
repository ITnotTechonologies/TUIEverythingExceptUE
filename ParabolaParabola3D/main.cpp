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
    InitialPosition[2] = Position[2] + 0.0f;

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
        lines[0].position = sf::Vector2f(Position[0], Position[2]);
        lines[0].color = TraceColour;
        lines[1].position = sf::Vector2f(NewPosition[0], NewPosition[2]);
        lines[1].color = TraceColour;

        window.draw(lines);
        Position[0] = NewPosition[0] + 0.0f;
        Position[1] = NewPosition[1] + 0.0f;
        Position[2] = NewPosition[2] + 0.0f;

        //std::cout << Position[0] << ' ' << Position[1] << ' ' << Position[2] << std::endl;


    }
    sf::CircleShape shape(10.f);
    shape.setFillColor(Colour);
    shape.setPosition(Position[0] - 10, Position[2] - 10);
    window.draw(shape);
    if (Time == TimeCollision) std::cout << "Collision!\n";


}

void ParabolaPoint2D(double u, std::vector<double>& Position, double& angle1, double& angle2, double& time1, double& time2) {
    double x = Position[0];
    double y = Position[1];
    double x_0 = x;
    x = abs(x);
    double a = -g * 0.5 * std::pow((x / u), 2);
    double b = x;
    double c = a - y;
    std::cout << a << ' ' << b << ' ' << c << std::endl;
    double D = pow(b, 2) - 4 * a * c;

    if (D > 0) {
        std::cout << "2 Solutions\n";
        double t1 = (-1 * b + std::sqrt(D)) / (2 * a);
        double t2 = (-1 * b - std::sqrt(D)) / (2 * a);



        angle1 = std::atan(t1) * 180 / pi;
        angle2 = std::atan(t2) * 180 / pi;

        time1 = x / (u * std::cos(degreesToRadians(angle1)));
        time2 = x / (u * std::cos(degreesToRadians(angle2)));




    }
    else if (D == 0) {

        double t1 = (-1 * b + std::sqrt(D)) / (2 * a);
        double t2 = (-1 * b - std::sqrt(D)) / (2 * a);

        std::cout << t1 << ' ' << t2 << std::endl;

        angle1 = std::atan(t1) * 180 / pi;
        angle2 = std::atan(t2) * 180 / pi;

        time1 = x / (u * std::cos(degreesToRadians(angle1)));
        time2 = x / (u * std::cos(degreesToRadians(angle2)));




    }
    else {

        angle1 = -90;
        angle2 = -90;
        time1 = -1;
        time2 = -1;
    }
    if (x_0 < 0) {
        angle1 = 180 - angle1;
        angle2 = 180 - angle2;
    }
    time1 = Rounding(time1, 0.01f);
    time2 = Rounding(time2, 0.01f);

}



void ParabolaPoint3D(double u, std::vector<double> &Position, double& horizontal_angle, double& vertical_angle1, double& vertical_angle2, double &time1, double &time2)
{
    double x = Position[0];
    double y = Position[1];
    double z = Position[2];

    std::vector <double> Position2D(2);

    Position2D[0] = std::sqrt(std::pow(x, 2) + std::pow(y, 2));
    Position2D[1] = z;
    //double cos_value = x / positio
    horizontal_angle = std::acos((x / Position2D[0])) * 180 / pi;

    ParabolaPoint2D(u, Position2D, vertical_angle1, vertical_angle2, time1, time2);
}

bool ParabolaParabola3D(double u1, double u2, double starting_horizontal_angle1, double starting_vertical_angle1, double horizontal_angle2, double vertical_angle2, double c_h, double c_v, std::vector <double> Position1, std::vector <double> Position2, double& horizontal_result_angle, double& vertical_result_angle, double Step, double& CollisionTime, double& WaitTime) {
    double x_0 = Position2[0] - Position1[0];
    double y_0 = Position2[1] - Position1[1];
    double z_0 = Position2[2] - Position1[2];
    std::cout << x_0 << ';' << y_0 << ';' << z_0 << std::endl;
    double u_x2 = u2 * std::cos(degreesToRadians(horizontal_angle2)) * std::cos(degreesToRadians(vertical_angle2));
    double u_y2 = u2 * std::cos(degreesToRadians(90 - horizontal_angle2)) * std::cos(degreesToRadians(vertical_angle2));
    double u_z2 = u2 * std::sin(degreesToRadians(vertical_angle2));
    std::cout << u_x2 << ' ' << u_y2 << ' ' << u_z2 << std::endl;
    double Time = TimeOfFlight(u2, vertical_angle2, Position2[2]);
    double MaxH = MaxHeight(u1);
    double result_vertical_angle = -90;
    CollisionTime = -1;
    WaitTime = -1;

    for (double t = Step; t < Time; t += Step) {

        double s_x = u_x2 * t;
        double s_y = u_y2 * t;
        double s_z = u_z2 * t - 0.5 * t * t * g;
        std::vector <double> CurrentPosition(3);
        CurrentPosition[0] = x_0 + s_x;
        CurrentPosition[1] = y_0 + s_y;
        CurrentPosition[2] = z_0 + s_z;

        if (CurrentPosition[2] > MaxH) continue;
        double horizontal_angle, vertical_angle1, vertical_angle2, time1, time2;
        std::cout << "t = " << t << std::endl;
        ParabolaPoint3D(u1, CurrentPosition, horizontal_angle, vertical_angle1, vertical_angle2, time1, time2);
        std::cout << u_x2 << ' ' << u_y2 << ' ' << u_z2 << std::endl;
        std::cout << "x: " << CurrentPosition[0] << "  y: " << CurrentPosition[1] << " z: " << CurrentPosition[2] << std::endl;
        std::cout << horizontal_angle << ':' << ' ' << vertical_angle1 << "->" << time1 << ' ' << vertical_angle2 << "->" << time2 << std::endl;
        if (time1 <= t && time1 > 0) {
            WaitTime = t - time1;
            double RotationH = std::min(abs(horizontal_angle - starting_horizontal_angle1), (360 - horizontal_angle + starting_horizontal_angle1));
            double RotationHTime = RotationH / c_h;
            double RotationV = abs(starting_vertical_angle1 - vertical_angle1);
            double RotationVTime = RotationV / c_v;
            double RotationTime = std::max(RotationHTime, RotationVTime);
            std::cout << "RotationH: " << RotationH  << " RotationV:" << RotationV << " RotationTime: " << RotationTime << std::endl;
            if (RotationTime <= WaitTime) {
                horizontal_result_angle = horizontal_angle;
                vertical_result_angle = vertical_angle1;
                CollisionTime = t;
                break;
            }
            
            
        }
        if (time2 <= t && time2 > 0) {
            WaitTime = t - time2;
            double RotationH = std::min(abs(horizontal_angle - starting_horizontal_angle1), (360 - abs(horizontal_angle - starting_horizontal_angle1)));
            double RotationHTime = RotationH / c_h;
            double RotationV = abs(starting_vertical_angle1 - vertical_angle2);
            double RotationVTime = RotationV / c_v;
            double RotationTime = std::max(RotationHTime, RotationVTime);
            std::cout << "RotationH: " << RotationH << " RotationV:" << RotationV << " RotationTime: " << RotationTime << std::endl;
            if (RotationTime <= WaitTime) {
                horizontal_result_angle = horizontal_angle;
                vertical_result_angle = vertical_angle2;
                CollisionTime = t;
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
    sf::CircleShape shape(10.f);
    shape.setFillColor(sf::Color::Green);
    std::vector <double> Position1(3);
    Position1[0] = 0;
    Position1[1] = 0;
    Position1[2] = 750;
    double VerticalAngle1 = 45;
    double HorizontalAngle1 = 90;
    double U1 = 135;
    double D_TIME = 0.01f;
    double Time = 0.0f;

    
    std::vector <double> Position2(3);
    Position2[0] = -450;
    Position2[1] = 0;
    Position2[2] = 400;
    double HorizontalAngle2 = 45;
    double VerticalAngle2 = 45;
    double U2 = 75;
    
    double time1, time2;
    double CollisionTime, WaitTime;
    std::vector<double>RemakePosition2(3);
    RemakePosition2[0] = Position2[0];
    RemakePosition2[1] = Position2[1];
    RemakePosition2[2] = 750 - Position2[2];

    std::vector<double>RemakePosition1(3);
    RemakePosition1[0] = Position1[0];
    RemakePosition1[1] = Position1[1];
    RemakePosition1[2] = 750 - Position1[2];
    double ResultHorizontalAngle, ResultVerticalAngle;
    double c_h = 10, c_v = 10;
    bool f = ParabolaParabola3D(U1, U2,HorizontalAngle1, VerticalAngle1, HorizontalAngle2, VerticalAngle2, c_h, c_v, RemakePosition1, RemakePosition2, ResultHorizontalAngle, ResultVerticalAngle, 0.1f, CollisionTime, WaitTime);
    std::cout << ResultHorizontalAngle << ' ' << ResultVerticalAngle << ' ' << CollisionTime << ' ' << WaitTime << std::endl;


    //VerticalAngle1 = 64.0f;

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

        DrawParabola(Position1, U1, ResultHorizontalAngle, ResultVerticalAngle, Time - WaitTime, D_TIME, sf::Color::Yellow, sf::Color::Blue, 0);
        DrawParabola(Position2, U2, HorizontalAngle2, VerticalAngle2, Time, D_TIME, sf::Color::Yellow, sf::Color::Blue, 0);

        
        //std::cout << Time << std::endl;
        window.display();
    }

    return 0;
}