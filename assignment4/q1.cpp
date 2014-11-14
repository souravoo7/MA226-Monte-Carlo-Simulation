#include<cstdio>
#include<iostream>
#include<cmath>
using namespace std;
int main()
{
	int xo=5;
	int initial=((1597*xo)+1)%244944;
	double u=(double)initial/244944;
	int x;long count=0;
	double z;
	double sum=0;double ave;
	double max=0,min;
	x=((1597*initial)+1)%244944;
	while(count!=5000)
	{
		u=(double)x/244944;
		x=((1597*x)+1)%244944;
		z=-5*(log(u));
		if(count==0)
			min=z;
		if(z<=min)
			min=z;
		if(z>=max)
			max=z;
		sum=sum+z;
		cout<<z<<"\n";
		count++;
	}
	ave=sum/5000;
	cout<<"maximum="<<max<<"\n";
	cout<<"minimum="<<min<<"\n";
	cout<<"average="<<ave<<"\n";
	return 0;
}