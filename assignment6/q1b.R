#this is the r implementation of the box-muller method with marsaglia-bray modifications
boxmuller<-function(n)
{
	RN<-NULL;
	for(i in 1:n)
	{
		u1<-0;
		u2<-0;
		k<-2;
		while(k>1)
		{
			u1<-runif(1,min=0,max=1);
			u1<-(2*u1)-1;
			u2<-runif(1,min=0,max=1);
			u2<-(2*u2)-1;
			k<-(u1*u1)+(u2*u2);			
		}
		#print(paste(k));
		r<-(-2)*log(k);
		cv<-u1/sqrt(k);
		sv<-u2/sqrt(k);
		z1<-sqrt(r)*cv;
		z2<-sqrt(r)*sv;
		RN<-c(RN,z1,z2);
	}
	return(RN);
}
s<-boxmuller(200000);

print(s);