#include <iostream>
#include <vector>
#include <cmath>
#include <set>
#include <algorithm>

using namespace std;

bool InArr(vector<long long> arr, long long  a){
    for (long long  i=0; i<arr.size(); i++)
        if (arr[i]==a)
            return true;

    return false;
}




long long  isPoss (){
    return rand()%2;
}




int main(){
    long long KolPush=1;
    long long KolRoc=2;
    long long  MaxPoss=min(KolPush,KolRoc);
    long long kol=1;
    long long maxnow=0;
    vector<long long> finans;

    vector<vector<long long> > matrix;

    matrix.resize(KolRoc);

    for (long long i=0; i<KolRoc; i++){
        long long a=0,b=0;
        for (long long j=0; j<KolPush; j++){
            long long  x=isPoss();
            if (x==1){
                matrix[i].push_back(j);
                a++;
            }
            else {
                b++;
            }

        }
        if (b==KolPush){
            MaxPoss--;
        }
        kol*=a;
    }
/*
    for (long long  i=0; i<KolRoc; i++){
        for (long long  j=0; j<matrix[i].size(); j++){
            cout<< matrix[i][j]<<" ";
        }
        cout<<endl;
    }
    cout<<kol<<endl<<endl;*/
    for (long long  i=0; i<kol; i++){
        long long  sum=0;
        long long  t1=i, t2=kol;
        vector<long long > ans;
        set<long long > arr;
        for (long long  j=0; j<KolRoc; j++){
            t2/=matrix[j].size();
            long long  k=t1 / t2;
            t1=t1-k*t2;
            //cout<< k<<" ";
            ans.push_back(matrix[j][k]);
            arr.insert(matrix[j][k]);
        }
        if (arr.size()>maxnow){
            maxnow=arr.size();
            finans=ans;
        }
        if (arr.size()==MaxPoss)
            break;   
    }


    vector<long long > output;
    for (long long  i=0; i<finans.size(); i++){
        if (InArr(output,finans[i]))
            output.push_back(-1);
        else
            output.push_back(finans[i]);
    }



    for (long long  i=0; i<output.size(); i++){
        cout<<output[i]<<" ";
    }
}



