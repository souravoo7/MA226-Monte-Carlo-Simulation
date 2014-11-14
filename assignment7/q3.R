weibull<-function(n){
	RN<-NULL;
	for(i in 1:n)
	{
		u<-runif(1,min=0,max=1);
		x1<-sqrt(log(1/u));
		x2<-(sqrt(log(1/u)))^3;
		if(u<=0.4)
		{
			x<-x1;
			RN<-c(RN,x);
		}
		if(u>0.6)
		{
			x<-x2;
			RN<-c(RN,x);
		}
	}
	return(RN);
}
s<-weibull(50);

