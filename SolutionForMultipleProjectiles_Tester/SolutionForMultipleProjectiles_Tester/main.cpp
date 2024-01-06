#include <iostream>
#include <vector>
#include <cmath>
#include <set>
#include <algorithm>
#include <time.h>

using namespace std;

bool InArr(vector<long long> arr, long long  a) {
    for (long long i = 0; i < arr.size(); i++)
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

    bool isBalistic = false;

    double horizontal_angle;
    double vertical_angle;
    double c_v = 1;
    double c_h = 1;
};







int main() {
    long long projectile_amount = 5;
    vector <object> projectile(projectile_amount);
    long long target_amount = 4;
    long long  max_possbile = min(projectile_amount, target_amount);
    long long amount = 1;
    long long max_current = 0;
    vector<long long> result;

    vector<vector<long long> > matrix;
    srand(time(NULL));

    matrix.resize(target_amount);

    for (long long i = 0; i < target_amount; i++) {
        long long a = 0, b = 0;
        for (long long j = 0; j < projectile_amount; j++) {
            long long  x = rand() % 2;
            cout << x << ' ';
            if (x == 1) {
                matrix[i].push_back(j);
                a++;
            }
            else {
                b++;
            }

        }
        if (b == projectile_amount) {
            max_possbile--;
        }
        amount *= a;
        cout << endl;
    }
    
        for (long long  i=0; i<target_amount; i++){
            for (long long  j=0; j<matrix[i].size(); j++){
                cout<< matrix[i][j]<<" ";
            }
            cout<<endl;
        }
        cout<<amount<<endl<<endl;
    for (long long i = 0; i < amount; i++) {
        long long  sum = 0;
        long long  t1 = i, t2 = amount;
        vector<long long > ans;
        set<long long > arr;
        for (long long j = 0; j < target_amount; j++) {
            t2 /= matrix[j].size();
            long long  k = t1 / t2;
            t1 = t1 - k * t2;
            //cout<< k<<" ";
            ans.push_back(matrix[j][k]);
            arr.insert(matrix[j][k]);
        }
        if (arr.size() > max_current) {
            max_current = arr.size();
            result = ans;
        }
        /*if (arr.size() == max_possbile)
            break;*/
    }


    vector<long long > output;
    for (long long i = 0; i < result.size(); i++) {
        if (InArr(output, result[i]))
            output.push_back(-1);
        else
            output.push_back(result[i]);
    }



    for (long long i = 0; i < output.size(); i++) {
        cout << output[i] << " ";
    }
}



