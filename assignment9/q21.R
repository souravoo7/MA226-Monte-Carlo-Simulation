#this calculates the confidence intervals 
estimate<-function(n)
{
	s<-0;
	RN<-NULL;
	RN1<-NULL;
	for(i in 1:n)
	{
		u1=runif(1,min=0,max=1);
		y1=rexp(1,rate=sqrt(u1));
		y2=rexp(1,rate=sqrt(1-u1));
		RN1<-c(RN1,(0.5*(y1+y2)));
		s<-s+0.5*(y1+y2);
	}
	
	RN<-c(RN,(s/n));# the estimate
	RN<-c(RN,(var(RN1)/sqrt(n)));
	return(RN);
}
for(i in 2:5)
{
	print(paste(10^i));
	k<-estimate(10^i);
	i1<-k[1]-(qnorm(0.025)*k[2]);
	i2<-k[1]+(qnorm(0.025)*k[2]);
	print(paste(i1));
	print(paste(i2));
}