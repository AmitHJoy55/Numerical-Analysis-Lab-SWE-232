/*
    Gaussian Elimination Method
    Amit Hassan Joy
    Reg:2020831026
*/
#include<bits/stdc++.h>
using namespace std;
int main()
{
	 int i,j,k,n;
     cout<< setprecision(3)<< fixed;
	 cout<<"Enter number of unknowns: ";
	 cin>>n;
	 float a[n+1][n+1], x[n+1], ratio;
	 cout<<"Enter Coefficients of Augmented Matrix: "<< endl;
	 for(i=1;i<=n;i++)
	 {
		  for(j=1;j<=n+1;j++)
		  {
			   cout<<"a["<< i<<"]"<<"["<< j<<"]= ";
			   cin>>a[i][j];
		  }
	 }
	 for(i=1;i<=n-1;i++)
	 {
		  if(a[i][i] == 0.0)
		  {
			   cout<<"Mathematical Error!";
			   return 0;
		  }
		  for(j=i+1;j<=n;j++)
		  {
			   ratio = a[j][i]/a[i][i];

			   for(k=1;k<=n+1;k++)
			   {
			  		a[j][k] = a[j][k] - ratio*a[i][k];
			   }
		  }
	 }
	 x[n] = a[n][n+1]/a[n][n];
	 for(i=n-1;i>=1;i--)
	 {
		  x[i] = a[i][n+1];
		  for(j=i+1;j<=n;j++)
		  {
		  		x[i] = x[i] - a[i][j]*x[j];
		  }
		  x[i] = x[i]/a[i][i];
	 }
	 cout<< endl<<"Ans No:1 "<< endl;
	 for(i=1;i<=n;i++)
	 {
	  	cout<<"\t"<<"a["<< i<<"] = "<< x[i]<< endl;
	 }
	 cout<<"Ans no 2 :\n";
     double v = x[1]*6*6 + x[1]*6 + x[2];
     cout<<"    velocity at t=6 second : v = "<<v<<endl;
	 return(0);
}
