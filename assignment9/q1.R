#this program returns an estimate of the stated distribution
estimate<-function(n)
{
	s<-0;
	for(i in 1:n)
	{
		u1=runif(1,min=0,max=1);
		y=rexp(1,rate=sqrt(u1));
		s<-s+y;
	}
	s<-(s/n);
	return(s);
}
k<-estimate(100);
print(k);