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
	int i;
	int a[8]={0,0,0,0,0,0,0,0};
	x=((1597*initial)+1)%244944;
	while(count!=5000)
	{
		u=(double)x/244944;
		x=((1597*x)+1)%244944;
		z=-5*(log(u));
		if(z>=0.0 && z<5.0)
			a[0]=a[0]+1;
		if(z>=5.0 && z<10.0)
			a[1]=a[1]+1;
		if(z>=10.0 && z<15.0)
			a[2]=a[2]+1;
		if(z>=15.0 && z<20.0)
			a[3]=a[3]+1;
		if(z>=20.0 && z<25.0)
			a[4]=a[4]+1;
		if(z>=25.0 && z<30.0)
			a[5]=a[5]+1;
		if(z>=30.0 && z<35.0)
			a[6]=a[6]+1;
		if(z>=35.0 && z<40.0)
			a[7]=a[7]+1;

		count++;
	}
	for(i=0;i<8;i++)
	{
		cout<<a[i]<<"\n";
	}
	//ave=sum/5000;
	//cout<<"maximum="<<max<<"\n";
	//cout<<"minimum="<<min<<"\n";
	//cout<<"average="<<ave<<"\n";
	return 0;
}