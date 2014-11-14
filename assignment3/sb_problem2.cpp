#include<iostream>
#include<climits>
#include<cmath>
#define N 1000
using namespace std;
unsigned int *u;

unsigned int eFib(int index)
{
	unsigned int ui, temp;
	ui = (u[index-5] + u[index-17]) % (INT_MAX+1);
	return ui;
}

int main(int argc, char **argv)
{
	//declaring variables
	int count, max;
	double mean = 0;
	double variance = 0;
	double temp;
	int f[50];
	double p[50];
	u = new unsigned int[N];
	//taking the starting 17 values
	for(count = 0; count < 17; count++)
	{
		cin>>u[count];
	}
	//u[0] = 2147483647;
	count = 17;
	//generating sequence
	while(count < N)
	{
		u[count] = eFib(count);
		count++;
	}
	if(argv[1][0] == 'c')
	{
		switch(argv[1][1])
		{
			case '1':
				max = 1000;
				break;
			case '2':
				max = 10000;
				break;
			case '3':
				max = 100000;
				break;
		}
		for(count = 1; count < max; count++)
		{
			cout<<u[count-1]<<'\t'<<u[count]<<endl;
		}
	}
	else if(argv[1][0] == 'd')
	{
		//calculate mean
		mean = u[0];
		for(count = 1; count < 1000; count++)
		{
			mean = mean + (u[count] - mean*1.0)/(count + 1);
		}
		//calculate variance
		for(count = 0; count < 1000; count++)
		{
			variance = pow(u[count]*1.0 - mean, 2);
		}
		variance = variance/1000.0;
		cout<<(unsigned int)mean<<endl;
		cout<<variance<<endl;
		//calculate probability distribution
		for(count = 0; count < 50; count++)
		{
			f[count] = 0;
		}
		for(count = 0; count < 1000; count++)
		{
			temp = (u[count]*1.0)/pow(2.0, 15);
			temp = temp/pow(2.0, 16);
			f[(int)(temp/0.02)]++;
		}
		double pd[50];
		pd[0] = 0;
		for(count = 0; count < 50; count++)
		{
			p[count] = f[count]/1000.0;
			if(count == 0)
			{
				pd[count] = p[count];
			}
			else
			{
				pd[count] = pd[count-1] + p[count];
			}
			cout<<pd[count]<<endl;
		}
	}
	else if(argv[1][0] == 'e')
	{
		//calculating autocorrelation values
		double temp1 = 0, temp2 = 0;
		double autoc[5];
		for(count = 0; count < 1000; count++)
		{
			temp2 += ((double)u[count] - (double)mean)*((double)u[count] - (double)mean);
		}
		cout<<temp2<<endl;
		for(max = 0; max < 5; max++)
		{
			temp1 = 0;
			for(count = max+1; count < 1000; count++)
			{
				temp1 += 1.0*((double)u[count] - (double)mean)*((double)u[count-1] - (double)mean);
			}
			autoc[max] = temp1/temp2;
			cout<<temp1<<endl;
		}
		for(count = 0; count < 5; count++)
			cout<<autoc[count]<<endl;
	}
	return 0;
}