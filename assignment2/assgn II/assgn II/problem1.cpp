#include<iostream>
using namespace std;
int main()
{
	int i;int x,x1;int initial;	// initializing variables
	for(i=0;i<11;i++)// taking valyes from 1 to 10
	{
		cout<<"x0="<<i<<"\n";
		initial=(6*i)%11;// for a=6,b=0,m=11
		x=initial;
		do
		{
			cout<<x<<",";
			x=(6*x)%11;
			
		}while(x!=initial);//printing each cycle as it repeats itself
		cout<<"\n----------------------"<<"\n";
	}cout<<"----------------------"<<"\n";
	x1=0;x=0;
	for(i=0;i<11;i++)
	{
		cout<<"x0="<<i<<"\n";
		initial=(3*i)%11;//for a=3,b=0,m=11
		x=initial;
		do
		{
			cout<<x<<",";
			x=(3*x)%11;
			
		}while(x!=initial);
		cout<<"\n----------------------"<<"\n";
	}
	return 0;
}
