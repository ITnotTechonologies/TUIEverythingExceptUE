#include <iostream>
#include <vector>
#include <cmath>
#include <set>
#include <algorithm>
#include <time.h>

using namespace std;

const double pi = 3.14159265359;

const double g = 9.81f;

double degreesToRadians(double x) {
    return x * pi / 180;
}

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


void LinePoint2D(double u, std::vector <double> Position, double& result_angle, double& time) {
    result_angle = GetAngleOnThePlane(Position[0], Position[1]);
    double S = std::sqrt(Position[0] * Position[0] + Position[1] * Position[1]);
    time = S / u;
}


bool LineParabola2D(double u1, double u2, double starting_angle1, double angle2, double C, std::vector <double> Position1, std::vector <double> Position2, double& result_angle, double Step, double& CollisionTime, double& WaitTime, std::vector<double>& CollisionPosition) {
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

double MaxHeight(double u) {
    double t = 0.5f * TimeOfFlight(u, 90, 0);
    return (u * t - 0.5f * g * t * t);

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
    

}



void ParabolaPoint3D(double u, std::vector<double>& Position, double& horizontal_angle, double& vertical_angle1, double& vertical_angle2, double& time1, double& time2)
{
    double x = Position[0];
    double y = Position[1];
    double z = Position[2];

    std::vector <double> Position2D(2);

    Position2D[0] = std::sqrt(std::pow(x, 2) + std::pow(y, 2));
    Position2D[1] = z;
    
    horizontal_angle = GetAngleOnThePlane(x, y);

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
    double Time = TimeOfFlight(u2, vertical_angle2, Position2[2]);//Get a time of flight using the UE function for "tsil'"
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
        if (vertical_angle1 == vertical_angle1) { //check the angle at which projectile is fired for collision with surounding environment
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
        if (vertical_angle2 == vertical_angle2) // you know what to do 
        {
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


    }

    if (CollisionTime > 0) return true;
    return false;

}

bool InArr(vector<int> arr, int  a) {
    for (int i = 0; i < arr.size(); i++)
        if (arr[i] == a)
            return true;

    return false;
}

struct object {
    double x = 0;
    double y = 0;
    double z = 0;
    
    double u = 0;
    double a = 0;

    bool IsBalistic = false;

    double horizontal_angle;
    double vertical_angle;
    double c_v = 1;
    double c_h = 1;
};


struct situation_data {
    bool IsPossible = false;

    float horizontal_angle = 0;
    float vertical_angle = 0;
    
    float CollisionTime;

    float WaitTime;

    float CollisionPosition_x = 0;
    float CollisionPosition_y = 0;
    float CollisionPosition_z = 0;
};



void ProcessingSituation(vector <vector<situation_data>> &situations_matrix) {
    int target_amount = situations_matrix.size();
    int projectile_amount;
    if (target_amount) {
        projectile_amount = situations_matrix[0].size();
    }
       
    int  max_possbile = min(projectile_amount, target_amount);
    int amount = 1;
    int max_current = 0;
    vector<int> result;
    vector<vector<int> > matrix;


    matrix.resize(target_amount);

    for (int i = 0; i < target_amount; i++) {
        int a = 0, b = 0;
        for (int j = 0; j < projectile_amount; j++) {
            if (situations_matrix[i][j].IsPossible) {
                matrix[i].push_back(j);
                a++;
            }
            else {
                b++;
            }

        }
        amount *= a;

    }

    cout << endl;

    for (int i = 0; i < target_amount; i++) {
        for (int j = 0; j < matrix[i].size(); j++) {
            cout << matrix[i][j] << " ";
        }
        cout << endl;
    }
    cout << amount << endl << endl;
    for (int i = 0; i < amount; i++) {
        int  sum = 0;
        int  t1 = i, t2 = amount;
        vector<int > ans;
        set<int > arr;
        for (int j = 0; j < target_amount; j++) {
            t2 /= matrix[j].size();
            int  k = t1 / t2;
            t1 = t1 - k * t2;
            
            ans.push_back(matrix[j][k]);
            arr.insert(matrix[j][k]);
        }
        if (arr.size() > max_current) {
            max_current = arr.size();
            result = ans;
        }
        
    }


    vector<int > output;
    for (int i = 0; i < result.size(); i++) {
        if (InArr(output, result[i]))
            output.push_back(-1);
        else
            output.push_back(result[i]);
    }



    for (int i = 0; i < output.size(); i++) {
        cout << output[i] << " ";
    }
}


int main() {
    srand(time(NULL));
    ios_base::sync_with_stdio(false);
    int projectile_amount = 5;
    vector <object> projectiles(projectile_amount);
    int target_amount = 4;
    vector <object> targets(target_amount);
    vector < vector<situation_data>> situations_matrix;
    situations_matrix.resize(target_amount);
    for (int i = 0; i < target_amount; i++) {
        situations_matrix[i].resize(projectile_amount);
        for (int j = 0; j < projectile_amount; j++) {
            int x = rand() % 2;
            cout << x << ' ';
            situations_matrix[i][j].IsPossible = (bool)x;
        }
        cout << endl;

    }

    for (int i = 0; i < target_amount; i++) {
        for (int j = 0; j < projectile_amount; j++) {
            vector <float> Position1(3);
            Position1[0] = projectiles[j].x;
            Position1[1] = projectiles[j].y;
            Position1[2] = projectiles[j].z;
            vector <float> Position2(3);
            Position2[0] = projectiles[j].x;
            Position2[1] = projectiles[j].y;
            Position2[2] = projectiles[j].z;
            if (projectiles[j].IsBalistic) situations_matrix[i][j].IsPossible = ParabolaParabola3D(projectiles[j].u, targets[i].u, projectiles[j].horizontal_angle, projectiles[j].vertical_angle, targets[i].horizontal_angle, targets[i].vertical_angle, projectiles[j].c_h, projectiles[j].c_v, Position1, Position2, situations_matrix[i][j].horizontal_angle, situations_matrix[i][j].vertical_angle, 0.01, situations_matrix[i][j].CollisionTime, situations_matrix[i][j].WaitTime);
            else situations_matrix[i][j].IsPossible = LineParabola3D(projectiles[j].u, projectiles[j].a, targets[i].u, projectiles[j].horizontal_angle, projectiles[j].vertical_angle, targets[i].horizontal_angle, targets[i].vertical_angle, projectiles[j].c_h, projectiles[j].c_v, Position1, Position2, )
        }
    }
    

    

    ProcessingSituation(situations_matrix);

    
}



