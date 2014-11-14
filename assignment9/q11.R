#this gives the confidence interval 
estimate<-function(n)
{
	RN<-NULL;
	RN1<-NULL;
	s<-0;s1<-0;s2<-0;
	for(i in 1:n)
	{
		u1=runif(1,min=0,max=1);
		y=rexp(1,rate=sqrt(u1));
		s<-s+y;
		RN1<-c(RN1,y);
	}
	s1<-s/n;#this is the mean
	RN<-c(RN,s1);
	s2<-(sqrt(var(RN1))/sqrt(n));
	RN<-c(RN,s2);
	return(RN);
}
k<-estimate(100);#has two elements
i1<-k[1]-(qnorm(0.025)*k[2]);
i2<-k[1]+(qnorm(0.025)*k[2]);
print(paste(i1));
print(paste(i2));