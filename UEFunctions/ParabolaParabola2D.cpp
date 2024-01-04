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
