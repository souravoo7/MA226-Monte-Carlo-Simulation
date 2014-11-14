#include<iostream>
#include<cmath>
using namespace std;

double newtonRaphson (double x)
{
  return x - (3*x*x-exp(x)) / (6*x-exp(x));//using the given function and its derivative
}

int main ()
{
        double x = -10.0;         // the initial guess close and < to the actual root from the graph
        double error = 0.00001;    // 0.00001 is the error level we wish
        double x1;

        do
        {
                x1 = x;
                x = newtonRaphson(x);           
        }
        while (abs(x1 - x) > error);     // while loop because the
                                        // number of iterations is not
                                        // known beforehand
        cout << "Root: " << x << endl;

        return 0;        
}
