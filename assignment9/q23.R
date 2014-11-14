#this calculates the variation reduction percentage
estimateredv<-function(n)
{
	s<-0;
	RN<-NULL;
	RN1<-NULL;
	for(i in 1:n)
	{
		u1=runif(1,min=0,max=1);
		y1=rexp(1,rate=sqrt(u1));
		y2=rexp(1,rate=sqrt(1-u1));
		RN<-c(RN,y1);
		RN1<-c(RN1,y2);
		s<-s+0.5*(y1+y2);
	}
	v1<-var(RN);
	v2<-var(RN1);
	cv<-cor(RN,RN1);
	v<-0.25*((v1)+(v2)+2*cv*(sqrt(v1*v2)));
	#return(cv);
	return((1-(v/v1))*100);#return variance reduction percentage
}
for(i in 2:5)
{
	print(paste(10^i));
	k<-estimateredv(10^i);
	print(k);
}
