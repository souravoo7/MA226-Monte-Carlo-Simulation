# the program uses antithetic variables to calculate the estimate
estimate<-function(n)
{
	s<-0;
	for(i in 1:n)
	{
		u1=runif(1,min=0,max=1);
		y1=rexp(1,rate=sqrt(u1));
		y2=rexp(1,rate=sqrt(1-u1));
		s<-s+0.5*(y1+y2);
	}
	s<-(s/n);# the estimate
	return(s);
}
for(i in 2:5)
{
	print(paste(10^i));
	k<-estimate(10^i);
	print(k);
}