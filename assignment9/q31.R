#this gives the variance reduction percentage
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
	s<-cor(RN,RN1);
	#s1<-var(RN);
	s2<-var(RN);
	
	vaw<-var(RN)-(s*s)/var(RN);
	return(s*s*100);
}
for(i in 2:5)
{
	print(paste(10^i));
	k<-estimate(10^i);
	print(k);
}
