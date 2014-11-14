#include<iostream>
#include<climits>
#define N 100000
using namespace std;
int axmodm(int m, int a, int x)
{
	int q = m/a;
	int r = m%a;
	int k = x/q;
	x = a * (x - k * q) - k * r;
	if(x < 0)
		x += m;
	return x;
}

void generate(int m, int a)
{
	//daclaring variables
	int x0 = 1, count, j;
	double *u;
	int frequency[20][3];// three frequncies 1000,10000,100000
	u = new double[N];// store frequencies in this array
	int sum[3] = {0, 0, 0};
	//initialising frequency array
	for(count = 0; count < 20; count++)
	{
		frequency[count][0] = frequency[count][1] = frequency[count][2] = 0;
	}
	//calculating frequencies
	for(count = 0; count < N; count++)
	{
		u[count] = (x0*1.0)/m;
		if(count < 1000)
		{
			frequency[(int)(u[count]/0.05)][0]++;
			frequency[(int)(u[count]/0.05)][1]++;
			frequency[(int)(u[count]/0.05)][2]++;
		}
		else if(count < 10000)
		{
			frequency[(int)(u[count]/0.05)][1]++;
			frequency[(int)(u[count]/0.05)][2]++;
		}
		else if(count < N)
		{
			frequency[(int)(u[count]/0.05)][2]++;
		}
		x0 = axmodm(m, a, x0);
	}
	//display frequency
	for(count = 0; count < 20; count++)
	{
		cout<<frequency[count][0]<<'\t'<<frequency[count][1]<<'\t'<<frequency[count][2]<<endl;
		sum[0]+=frequency[count][0];
		sum[1]+=frequency[count][1];
		sum[2]+=frequency[count][2];
	}
	cout<<sum[0]<<'\t'<<sum[1]<<'\t'<<sum[2]<<endl;
}

void coordinates(int m, int a)
{
	//declaring variables
	int x0 = 1, count, j;
	double *u;
	u = new double[N];
	//display coordinates
	for(count = 0; count < N; count++)
	{
		u[count] = (x0*1.0)/m;
		if(count == 0)
		{
			cout<<u[count]<<endl;
		}
		else
		{
			cout<<'\t'<<u[count]<<endl<<u[count];
		}
		x0 = axmodm(m, a, x0);
	}
}

void generate17(int m, int a)
{
	//declaring variables
	int x0 = 1, count;
	//displaying sequence
	for(count = 0; count < 17; count++)
	{
		cout<<x0<<endl;
		x0 = axmodm(m, a, x0);
	}
}

int main(int argc, char **argv)
{
	if(argc == 1)
	{
		generate(INT_MAX, 16807);//INT_MAX is the maximum int value of the compiler(32-bit in this case)
		generate(2147483399, 40692);
		generate(2147483563, 40014);
	}
	else if(argv[1][0] == '1')
	{
		coordinates(INT_MAX, 16807);
	}
	else if(argv[1][0] == '2')
	{
		generate17(INT_MAX, 16807);
	}
	return 0;
}

/*
To generate frequency run the program simply
To generate coordiantes; on windows type 'sb_problem1 1'; and on linux type './a.out 1'