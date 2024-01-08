bool InArr(vector<int> arr, int  a) {
    for (int i = 0; i < arr.size(); i++)
        if (arr[i] == a)
            return true;

    return false;
}

struct object {
    float x = 0;
    float y = 0;
    float z = 0;
    
    float u = 0;
    float a = 0;

    bool IsBalistic = false;

    float horizontal_angle;
    float vertical_angle;
    float c_v = 1;
    float c_h = 1;

    float fuel_amount;
    float fuel_price;
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


void CreatingSituation3D(vector <object> &projectiles, vector <object> &targets, vector <vector<situation_data>> &situations_matrix) {
    int target_amount = targets.size();
    int projectile_amount = projectiles.size();
    for (int i = 0; i < target_amount; i++) {
        for (int j = 0; j < projectile_amount; j++) {
            vector <float> Position1(3);
            Position1[0] = projectiles[j].x;
            Position1[1] = projectiles[j].y;
            Position1[2] = projectiles[j].z;
            vector <float> Position2(3);
            Position2[0] = targets[i].x;
            Position2[1] = targets[i].y;
            Position2[2] = targets[i].z;
            bool f;
            if (targets[i].IsBalistic == false) {
                situations_matrix[i][j].IsPossible = false;
                continue;
            }
            if (projectiles[j].IsBalistic) {
                f = ParabolaParabola3D(projectiles[j].u, targets[i].u, projectiles[j].horizontal_angle, projectiles[j].vertical_angle, targets[i].horizontal_angle, targets[i].vertical_angle, projectiles[j].c_h, projectiles[j].c_v, Position1, Position2, situations_matrix[i][j].horizontal_angle, situations_matrix[i][j].vertical_angle, 0.01, situations_matrix[i][j].CollisionTime, situations_matrix[i][j].WaitTime);
                situations_matrix[i][j].IsPossible = f;
            }
            else {
                f = LineParabola3D(projectiles[j].u, projectiles[j].a, targets[i].u, projectiles[j].horizontal_angle, projectiles[j].vertical_angle, targets[i].horizontal_angle, targets[i].vertical_angle, projectiles[j].c_h, projectiles[j].c_v, Position1, Position2, situations_matrix[i][j].horizontal_angle, situations_matrix[i][j].vertical_angle, 0.01, situations_matrix[i][j].CollisionTime, situations_matrix[i][j].WaitTime, projectiles[j].fuel_amount, projectiles[j].fuel_price);
                situations_matrix[i][j].IsPossible = f;

            }
            //cout << f << ' ';
        }
        cout << endl;
    }
}

void CreatingSituation2D(vector <object>& projectiles, vector <object>& targets, vector <vector<situation_data>>& situations_matrix) {
    int target_amount = targets.size();
    int projectile_amount = projectiles.size();
    for (int i = 0; i < target_amount; i++) {
        for (int j = 0; j < projectile_amount; j++) {
            vector <float> Position1(2);
            Position1[0] = projectiles[j].x;
            Position1[1] = projectiles[j].z;
            //Position1[2] = projectiles[j].z;
            vector <float> Position2(2);
            Position2[0] = targets[i].x;
            Position2[1] = targets[i].z;
            //Position2[2] = targets[i].z;
            bool f;
            if (targets[i].IsBalistic == false) {
                situations_matrix[i][j].IsPossible = false;
                continue;
            }
            if (projectiles[j].IsBalistic) {
                f = ParabolaParabola2D(projectiles[j].u, targets[i].u, projectiles[j].vertical_angle, targets[i].vertical_angle, projectiles[j].c_v, Position1, Position2, situations_matrix[i][j].vertical_angle, 0.01, situations_matrix[i][j].CollisionTime, situations_matrix[i][j].WaitTime);
                situations_matrix[i][j].IsPossible = f;
            }
            else {
                vector <float> CollisionPosition(2);


                f = LineParabola2D(projectiles[j].u, projectiles[j].a, targets[i].u, projectiles[j].vertical_angle, targets[i].vertical_angle, projectiles[j].c_v, Position1, Position2, situations_matrix[i][j].vertical_angle, 0.01, situations_matrix[i][j].CollisionTime, situations_matrix[i][j].WaitTime, CollisionPosition, projectiles[j].fuel_amount, projectiles[j].fuel_price);
                situations_matrix[i][j].IsPossible = f;
                situations_matrix[i][j].CollisionPosition_x = CollisionPosition[0];
                situations_matrix[i][j].CollisionPosition_y = CollisionPosition[1];
            }
            //cout << f << ' ';
        }
        cout << endl;
    }
}



void ProcessingSituation(vector <object> &projectiles, vector <object> &targets, vector <vector<situation_data>> &situations_matrix, vector <int> &linkage) {
    
    int target_amount = targets.size();
    int projectile_amount = projectiles.size();
    //vector <int> linkage(0);
    vector <bool> ocupied_projectiles(projectile_amount, false);
    //vector < vector<situation_data>> situations_matrix;
    situations_matrix.resize(target_amount);
    for (int i = 0; i < target_amount; i++) {
        situations_matrix[i].resize(projectile_amount);
    }
    //CreatingSituation3D(projectiles, targets, situations_matrix);
    CreatingSituation2D(projectiles, targets, situations_matrix);
    for (int i = 0; i < target_amount; i++) {
        for (int j = 0; j < projectile_amount; j++) cout << situations_matrix[i][j].IsPossible << ' ';
        cout << endl;
    }
    
    //CreatingSituation()
       
    int max_possible = min(projectile_amount, target_amount);
    int amount = 1;
    int max_current = 0;
    vector<int> result;
    vector<vector<int> > matrix;


    matrix.resize(target_amount);
    cout << endl;

    for (int i = 0; i < target_amount; i++) {
        int a = 0, b = 0;
        for (int j = 0; j < projectile_amount; j++) {
            cout << situations_matrix[i][j].IsPossible << ' ';
            if (situations_matrix[i][j].IsPossible == true) {
                matrix[i].push_back(j);
                a++;
            }
            else {
                b++;
            }
            

        }
        if (b == projectile_amount) max_possible--;
        if (a != 0) amount *= a;
        cout << endl;

    }

    //cout << endl;

    for (int i = 0; i < target_amount; i++) {
    
        for (int j = 0; j < matrix[i].size(); j++) {
            //cout << matrix[i][j] << " ";
        }

        //cout << endl;

    }
    //cout << amount << endl << endl;
    for (int i = 0; i < amount; i++) {
        int  sum = 0;
        int  t1 = i, t2 = amount;
        vector<int > ans;
        set<int > arr;
        for (int j = 0; j < target_amount; j++) {

            if (matrix[j].size() != 0) {
                t2 /= matrix[j].size();
                int  k = t1 / t2;
                t1 = t1 - k * t2;

                ans.push_back(matrix[j][k]);
                arr.insert(matrix[j][k]);
            }
            else {
                ans.push_back(-1);
                arr.insert(-1);
            }
            

  
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
        if (InArr(output, result[i])) {
            output.push_back(-1);
        }
        else {
            output.push_back(result[i]);
        }
            
    }
    
    linkage = output;
    for (int i = 0; i < target_amount; i++) {
        //cout << i << " <-> " << linkage[i] << endl;
        if (linkage[i] > -1) ocupied_projectiles[linkage[i]] = true;
    }
    cout << endl << endl;
    for (int i = 0; i < target_amount; i++) {
        if (linkage[i] == -1 && targets[i].IsBalistic == false) {
            for (int j = 0; j < projectile_amount; j++) {
                if (ocupied_projectiles[j] == false && projectiles[j].IsBalistic == false) {
                    linkage[i] = j;
                    ocupied_projectiles[j] = true;
                }
            }
        }
    }
    /*for (int i = 0; i < target_amount; i++) {
        cout << i << " <-> " << linkage[i] << endl;
    }*/
}

