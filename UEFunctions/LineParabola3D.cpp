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

void LinePoint3D(double v, double a, std::vector<double> Position, double& horizontal_angle, double& vertical_angle, double& time) {
    horizontal_angle = GetAngleOnThePlane(Position[0], Position[1]);
    vertical_angle = GetAngleOnThePlane(std::sqrt(Position[0] * Position[0] + Position[1] * Position[1]), Position[2]);

    double S = std::sqrt(Position[0] * Position[0] + Position[1] * Position[1] + Position[2] * Position[2]);
    double t_a = v / a;
    //double t_a = 0;
    double S_a = v / 2 * t_a;
    S -= S_a;
    time = (S / v) + t_a;
}


bool LineParabola3D(double u1, double a, double u2, double starting_horizontal_angle1, double starting_vertical_angle1, double horizontal_angle2, double vertical_angle2, double c_h, double c_v, std::vector <double> Position1, std::vector <double> Position2, double& horizontal_result_angle, double& vertical_result_angle, double Step, double& CollisionTime, double& WaitTime, double FuelAmount, double FuelPrice) {
    double x_0 = Position2[0] - Position1[0];
    double y_0 = Position2[1] - Position1[1];
    double z_0 = Position2[2] - Position1[2];
    std::cout << x_0 << ';' << y_0 << ';' << z_0 << std::endl;
    double u_x2 = u2 * std::cos(degreesToRadians(horizontal_angle2)) * std::cos(degreesToRadians(vertical_angle2));
    double u_y2 = u2 * std::cos(degreesToRadians(90 - horizontal_angle2)) * std::cos(degreesToRadians(vertical_angle2));
    double u_z2 = u2 * std::sin(degreesToRadians(vertical_angle2));
    std::cout << u_x2 << ' ' << u_y2 << ' ' << u_z2 << std::endl;
    double Time = TimeOfFlight(u2, vertical_angle2, Position2[2]);//Get the time of colission of a Balistic Missile with the ground
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

        double horizontal_angle, vertical_angle1, vertical_angle2, time1, time2;
        std::cout << "t = " << t << std::endl;
        LinePoint3D(u1, a, CurrentPosition, horizontal_angle, vertical_angle1, time1);
        std::cout << u_x2 << ' ' << u_y2 << ' ' << u_z2 << std::endl;
        std::cout << "x: " << CurrentPosition[0] << "  y: " << CurrentPosition[1] << " z: " << CurrentPosition[2] << std::endl;
        std::cout << horizontal_angle << ':' << ' ' << vertical_angle1 << "->" << time1 << ' ' << std::endl;
        if (vertical_angle1 != vertical_angle1) continue; // check the collision with the suroundings for the projectile, fired at an angle = angle1, with g = 0
        if (time1 * FuelPrice > FuelAmount) continue;

        if (time1 <= t && time1 > 0) {
            WaitTime = t - time1;
            double RotationH = std::min(abs(horizontal_angle - starting_horizontal_angle1), (360 - horizontal_angle + starting_horizontal_angle1));
            double RotationHTime = RotationH / c_h;
            double RotationV = abs(starting_vertical_angle1 - vertical_angle1);
            double RotationVTime = RotationV / c_v;
            double RotationTime = std::max(RotationHTime, RotationVTime);
            std::cout << "RotationH: " << RotationH << " RotationV:" << RotationV << " RotationTime: " << RotationTime << std::endl;
            if (RotationTime <= WaitTime) {
                horizontal_result_angle = horizontal_angle;
                vertical_result_angle = vertical_angle1;
                CollisionTime = t;
                break;
            }


        }
        

    }

    if (CollisionTime > 0) return true;
    return false;

}
