#include<iostream>
#include<cstdio>
#include<cmath>
#include<new>
using namespace std;
int main()
{
	int xo=5;
	int initial=((1597*xo)+1)%244944;
	int ini1=((1697*xo)+1)%244911;
	int ini2=((1797*xo)+1)%244923;
	int ini3=((1897*xo)+1)%244977;
	int ini4=((1997*xo)+1)%244887;
	double u1=(double)initial/244944;
	double u2=(double)ini1/244911;
	double u3=(double)ini2/244923;
	double u4=(double)ini3/244977;
	double u5=(double)ini4/244987;
	int x,x1,x2,x3,x4;long count=0;
	double z,z1,z2,z3,z4;
	double sum=0;double ave;
	double max=0,min;
	x=((1597*initial)+1)%244944;
	x1=((1697*ini1)+1)%244911;
	x2=((1797*ini2)+1)%244923;
	x3=((1897*ini3)+1)%244977;
	x4=((1997*ini4)+1)%244887;
	int a[85];int i;
	for(i=0;i<85;i++)
	{	
		a[i]=0;
	}
	while(count!=5000)
	{
		u1=(double)x/244944;
		x=((1597*x)+1)%244944;
		u2=(double)x1/244911;
		x1=((1697*x1)+1)%244911;
		u3=(double)x2/244923;
		x2=((1797*x2)+1)%244923;
		u4=(double)x3/244977;
		x3=((1897*x3)+1)%244977;
		u5=(double)x4/244987;
		x4=((1997*x4)+1)%244887;
		z=-5*log(u5*u1*u2*u3*u4);
		if(count==0)
			min=z;
		if(z<=min)
			min=z;
		if(z>=max)
			max=z;
		sum=sum+z;
		a[(int)(floor(z))]=a[(int)(floor(z))]+1;
		count++;
	}
	ave=sum/5000;
	cout<<"maximum="<<max<<"\n";
	cout<<"minimum="<<min<<"\n";
	cout<<"average="<<ave<<"\n";
	for(i=0;i<85;i++)
		cout<<i<<"	"<<a[i]<<"\n";
	return 0;
}