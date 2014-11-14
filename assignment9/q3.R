#this code calculates the estimate value
estimate<-function(n)
{
	s<-0;
	RN<-NULL;
	RN1<-NULL;
	for(i in 1:n)
	{
		u1<-runif(1,min=0,max=1);
		y<-rexp(1,rate=sqrt(u1));
		RN<-c(RN,y);
		RN1<-c(RN1,sqrt(u1));
	}
	s<-cov(RN,RN1);
	#s1<-var(RN);
	s2<-var(RN1);
	cval<--(s/s2);
	z<-mean(RN)+cval*(mean(RN1)-mean(mean(RN1)));
	return(z);
}
for(i in 2:5)
{
	print(paste(10^i));
	k<-estimate(10^i);
	print(k);
}