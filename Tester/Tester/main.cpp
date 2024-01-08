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




long long  isPoss() {
    return rand() % 2;
}




int main() {
    long long projectile_amount = 8;
    long long target_amount = 5;
    long long  MaxPoss = min(projectile_amount, target_amount);
    long long amount = 1;
    long long maxnow = 0;
    srand(time(NULL));
    vector<long long> result;

    vector<vector<long long> > matrix;

    matrix.resize(target_amount);

    for (long long i = 0; i < target_amount; i++) {
        long long a = 0, b = 0;
        for (long long j = 0; j < projectile_amount; j++) {
            long long x;
            if (i != 1)x = isPoss();
            else x = 0;
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
            MaxPoss--;
        }
        if (a != 0) amount *= a;
        cout << endl;
    }
    
        for (long long  i=0; i<target_amount; i++){
            for (long long  j=0; j<matrix[i].size(); j++){
                cout<< matrix[i][j]<<" ";
            }
            cout<<endl;
        }
        cout << amount << endl;
    for (long long i = 0; i < amount; i++) {
        long long  sum = 0;
        long long  t1 = i, t2 = amount;
        vector<long long > ans;
        set<long long > arr;
        for (long long j = 0; j < target_amount; j++) {
            cout << matrix[j].size() << ' ';
            if (matrix[j].size() != 0) {
                t2 /= matrix[j].size();
                long long  k = t1 / t2;
                t1 = t1 - k * t2;
                //cout<< k<<" ";
                ans.push_back(matrix[j][k]);
                arr.insert(matrix[j][k]);
            }
            else {
                ans.push_back(-1);
                arr.insert(-1);
            }
            
        }
        cout << endl;
        if (arr.size() > maxnow) {
            maxnow = arr.size();
            result = ans;
        }
        //if (arr.size() == MaxPoss)
            //break;
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