double TimeOfFlight(double u, double angle, double z) {
    double u_z = u * std::sin(degreesToRadians(angle));
    double D = u_z * u_z + 2 * g * z;
    double x2 = (-u_z - std::sqrt(D)) / (-g);

    return x2;

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


void LinePoint2D(double u, std::vector <double> Position,  double& result_angle, double &time) {
    result_angle = GetAngleOnThePlane(Position[0], Position[1]);
    double S = std::sqrt(Position[0] * Position[0] + Position[1] * Position[1]);
    time = S / u;
}



bool LineParabola2D(double u1, double u2, double starting_angle1, double angle2, double C, std::vector <double> Position1, std::vector <double> Position2, double& result_angle, double Step, double& CollisionTime, double& WaitTime, std::vector<double>& CollisionPosition, double FuelAmount, double FuelPrice) {
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
        LinePoint2D(u1, CurrentPosition, angle1, time1);
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

