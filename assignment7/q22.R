#this program calculates the cumulative distribution function of poission distribution
poisson<-function(n)
{
	RN<-NULL;
	cf<-0;
	for(i in 1:n)
	{
		u1<-runif(1,min=0,max=1);
		i<-0;
		p<-exp(-2);#mean=2
		f<-p;
		#x<-i;
		while(u1>f)
		{
			p<-p*2/(1+i);
			f<-f+p;
			i<-i+1;
		}
		x<-i;
		cf<-cf+x;
		RN<-c(RN,cf);
	}
	return (RN);
}
s<-poisson(50);

