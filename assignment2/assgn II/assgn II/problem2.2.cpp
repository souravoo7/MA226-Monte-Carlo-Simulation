#include<cstdio>
#include<iostream>
#include<cmath>
using namespace std;
int main()
{
	int xo=5;long count=1;
	int initial=((51749*xo)+1)%244944;
	double u=(double)initial/244944;
	
	int x;int k;
	int a[20][2];
	x=((51749*initial)+1)%244944;
	while(count<101)
	{
		u=(double)x/244944;
		
		x=((51749*x)+1)%244944;
		count++;
		if(u>=0.0 && u<0.05)
			a[0][1]=a[0][1]+1;
		if(u>0.05 && u<0.10)
			a[1][1]=a[1][1]+1;
		if(u>=0.95 && u<1.0)
			a[19][1]=a[19][1]+1;
		if(u>=0.1 && u<0.15)
			a[2][1]=a[2][1]+1;
		if(u>=0.15 && u<0.2)
			a[3][1]=a[3][1]+1;
		if(u>=0.2 && u<0.25)
			a[4][1]=a[4][1]+1;
		if(u>=0.25 && u<0.30)
			a[5][1]=a[5][1]+1;
		if(u>=0.30 && u<0.35)
			a[6][1]=a[6][1]+1;
		if(u>=0.35 && u<0.40)
			a[7][1]=a[7][1]+1;
		if(u>=0.40 && u<0.45)
			a[8][1]=a[8][1]+1;
		if(u>=0.45 && u<0.5)
			a[9][1]=a[9][1]+1;
		if(u>=0.5 && u<0.55)
			a[10][1]=a[10][1]+1;
		if(u>=0.55 && u<0.60)
			a[11][1]=a[11][1]+1;
		if(u>=0.60 && u<0.65)
			a[12][1]=a[12][1]+1;
		if(u>=0.65 && u<0.70)
			a[13][1]=a[13][1]+1;
		if(u>=0.70 && u<0.75)
			a[14][1]=a[14][1]+1;
		if(u>=0.75 && u<0.80)
			a[15][1]=a[15][1]+1;
		if(u>=0.80 && u<0.85)
			a[16][1]=a[16][1]+1;
		if(u>=0.85 && u<0.90)
			a[17][1]=a[17][1]+1;
		if(u>=0.90 && u<0.95)
			a[18][1]=a[18][1]+1;

					
	}int c=1;int i;int j;
	for(i=0;i<20;i++)
	{
		a[i][0]=i+1;
	}
	for(i=0;i<20;i++)
	{
		for(j=0;j<2;j++)
		{
			cout<<a[i][j]<<" ";
		}
		cout<<"\n";
	}
	return 0;
}