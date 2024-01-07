#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>
# define PI  3.14159265358979323846
using namespace std;
struct missle {
    float speed;
    float angle;
    float size;
    int xcoor;
    int ycoor;
    //int zcoor;
};
bool intersect(missle a1,missle a2){
int x=abs(a1.xcoor-a2.xcoor);
int y=abs(a1.ycoor-a2.ycoor);
int t=(a1.speed*x*sin(a2.angle) - a2.speed*y*sin(a2.angle) + a1.speed*x*cos(a1.angle) + a1.speed*y*sin(a1.angle))/(2*a2.speed*a2.speed*sin(a2.angle)*sin(a2.angle) + 2*sqrt(2)*a2.speed*a1.speed*sin(a2.angle)*cos(a1.angle + PI/4) + a1.speed*a1.speed);


int part1=pow(a1.speed*sin(a1.angle)*t-y-a2.speed*sin(a2.angle)*t, 2);
int part2=pow(a2.speed*cos(a1.angle)*t-x+a2.speed*sin(a2.angle)*t, 2);

int dist=sqrt(part1+part2);

if (dist>10 &&  a1.speed*sin(a1.angle)*t-y-a2.speed*sin(a2.angle)*t>0 && t>0)
    return false;
else
    return true;
}
int main(){
vector<missle> arr;
int amountMissles=0;
cin>>amountMissles;
for (int i=0; i<amountMissles; i++){
    cin>>arr[i].speed>>arr[i].angle>>arr[i].size>>arr[i].xcoor>>arr[i].ycoor;
}
int kol=0;
for (int i=0; i<amountMissles-1; i++)
    for (int j=i+1; j<amountMissles; j++)
        if (intersect(arr[i],arr[j])==true)
            kol++;

cout<<kol;

}