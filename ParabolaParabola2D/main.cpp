#include <SFML/Graphics.hpp>
#include <iostream>
#include <vector>
#include <cmath>

const double pi = 3.14159265359;

const double g = 0.981f;

sf::RenderWindow window(sf::VideoMode(2000, 750), "SFML works!");

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

double TimeOfFlight(double u, double angle, double y) {
    double u_y = u * std::sin(degreesToRadians(angle));
    double D = u_y * u_y + 2 * g * y;
    double x1 = (-u_y + std::sqrt(D)) / (-g);
    double x2 = (-u_y - std::sqrt(D)) / (-g);

    return x2;

}

double MaxHeight(double u) {
    double t = 0.5f * TimeOfFlight(u, 90, 0);
    return (u * t - 0.5f * g * t * t);
}

void DrawParabola(std::vector <double> &InitialPosition, double InitialVelocity, double InitialAngle, double Time, double D_TIME, sf::Color Colour, sf::Color TraceColour, double TimeCollision) {
    std::vector <double> Position(2);
    double r = 10.0f;
    Position[0] = InitialPosition[0];
    Position[1] = InitialPosition[1];
    double u_x = std::cos(degreesToRadians(InitialAngle)) * InitialVelocity;
    double u_y = std::sin(degreesToRadians(InitialAngle)) * InitialVelocity;
    for (double t = D_TIME; t <= Time; t += D_TIME) {
        double s_x = u_x * t;
        double s_y = u_y * t - g * 0.5 * pow(t, 2);
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
    sf::CircleShape shape(r);
    shape.setFillColor(Colour);
    shape.setPosition(Position[0] - r, Position[1] - r);
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



void ParabolaPoint2D(double u, double x, double y, double& angle1, double& angle2, double &time1, double &time2) {
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

bool ParabolaParabola2D(double u1, double u2, double starting_angle1, double angle2, double C, std::vector <double> Position1, std::vector <double> Position2, double& result_angle, double Step, double& CollisionTime, double& WaitTime, std::vector<double>& CollisionPosition) {
    double x_0 = Position2[0] - Position1[0];
    double y_0 = Position2[1] - Position1[1];
    std::cout << Position2[0] << std::endl;

    std::cout << x_0 << ';' << y_0 << std::endl;
    double u_x2 = u2 * std::cos(degreesToRadians(angle2));
    double u_y2 = u2 * std::sin(degreesToRadians(angle2));
    std::cout << u_x2 << ' ' << u_y2 << std::endl;
    double Time = TimeOfFlight(u2, angle2, Position2[1]);
    double MaxH = MaxHeight(u1);
    std::cout << MaxH << std::endl;
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

        if (y > MaxH) continue;

        double angle1, angle2, time1, time2;
        std::cout << "t = " << t << std::endl;
        ParabolaPoint2D(u1, x, y, angle1, angle2, time1, time2);
        std::cout << "x: " << x << "  y: " << y << std::endl;
        std::cout << angle1 << "->" << time1 << ' ' << angle2 << "->" << time2 << std::endl;
        if (angle1 == angle1)
        {
            if (time1 <= t && angle1 != -90) {
                double Rotation = abs(starting_angle1 - angle1);
                double RotationTime = Rotation / C;
                //double RotationTime = 0;
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
        if (angle2 == angle2) {
            if (time2 <= t && angle2 != -90) {
                double Rotation = abs(starting_angle1 - angle2);
                double RotationTime = Rotation / C;
                //double RotationTime = 0;
                WaitTime = t - time2;
                if (WaitTime >= RotationTime) {
                    result_angle = angle2;
                    CollisionTime = t;
                    CollisionPosition[0] = x;
                    CollisionPosition[1] = y;
                    break;
                }
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
    std::vector <double> Position1(2);
    Position1[0] = -95;
    Position1[1] = 671;
    double initialAngle = 90;


    double initialVelocity = 60;
    double u_x = std::cos(degreesToRadians(initialAngle)) * initialVelocity;
    double v_x = u_x;
    double u_y = std::sin(degreesToRadians(initialAngle)) * initialVelocity;
    double v_y = u_y;

    double D_TIME = 0.01f;
    double Time = 0.0f;

    //object2
    std::vector <double> Position2(2);
    Position2[0] = 180;
    Position2[1] = 663;
    double initialAngle2 = 120;
    double initialVelocity2 = 30;

    u_x = std::cos(degreesToRadians(initialAngle2)) * initialVelocity2;
    v_x = u_x;
    u_y = std::sin(degreesToRadians(initialAngle2)) * initialVelocity2;
    v_y = u_y;
    

    /*sf::CircleShape Point(10.f);
    shape.setFillColor(sf::Color::Red);
    std::vector <double> PointPosition(2);
    PointPosition[0] = 450;
    PointPosition[1] = 450;
    Point.setPosition(PointPosition[0] - 10, PointPosition[1] - 10); 
    std::vector<double>RemakePointPosition(2);
    RemakePointPosition[0] = PointPosition[0];
    RemakePointPosition[1] = 750 - PointPosition[1];
    double angle1, angle2;
    double time1, time2;*/
    //ParabolaPoint(initialVelocity, PointPosition[0], 750 - PointPosition[1], angle1, angle2, time1, time2);
    //std::cout << angle1 << ' ' << angle2 << std::endl;
   /* time1 = Rounding(TimeOfFlight(initialVelocity, angle1, 0.0f), D_TIME);
    time2 = Rounding(TimeOfFlight(initialVelocity, angle2, 0.0f), D_TIME);

    std::cout << time1 << ' ' << time2 << std::endl;*/
    double CollisionTime, WaitTime;
    std::vector<double>CollisionPosition(2);
    std::vector<double>RemakePosition2(2);
    RemakePosition2[0] = Position2[0];
    RemakePosition2[1] = 750 - Position2[1];

    std::vector<double>RemakePosition1(2);
    RemakePosition1[0] = Position1[0];
    RemakePosition1[1] = 750 - Position1[1];


    double C = 200.0f;
    double ResultAngle = 0;
    double angle1, angle2, time1, time2;
    bool f = ParabolaParabola2D(initialVelocity, initialVelocity2, initialAngle, initialAngle2, C, RemakePosition1, RemakePosition2, ResultAngle, 0.1f, CollisionTime, WaitTime, CollisionPosition);
    //ParabolaPoint2D(50, -123, 116, angle1, angle2, time1, time2);
    //std::cout << angle1 << ' ' << angle2 << ' ' << time1 << ' ' << time2 << ".." << std::endl;
    std::cout << ResultAngle << ' ' << CollisionTime << ' ' << WaitTime << ' ' << CollisionPosition[0] << ' ' << CollisionPosition[1] << std::endl;
    
    //initialAngle = 19;



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

        
        //window.draw(Point);
        
        if (Time == Rounding(CollisionTime, 0.01f)) std::cout << "Collision\n";

        DrawParabola(Position1, initialVelocity, ResultAngle, Time - WaitTime, D_TIME, sf::Color::Red, sf::Color::Yellow, 0);
        DrawParabola(Position2, initialVelocity2,  initialAngle2, Time, D_TIME, sf::Color::Red, sf::Color::Blue, 0);
        //std::cout << Time << std::endl;
        window.display();
    }

    return 0;
}