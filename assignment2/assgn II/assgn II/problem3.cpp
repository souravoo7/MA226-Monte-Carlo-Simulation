#include<cstdio>
#include<iostream>
using namespace std;
int main()
{
	int xo=5;
	int initial=((1229*xo)+1)%2048;
	double u=(double)initial/2048;
	int x;
	x=((1229*initial)+1)%2048;
	while(x!=initial)
	{
		cout<<u<<" ";
		u=(double)x/2048;
		cout<<u<<"\n";
		x=((1229*x)+1)%2048;
	}
	return 0;
}