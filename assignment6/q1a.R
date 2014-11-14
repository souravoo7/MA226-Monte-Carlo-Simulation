boxmuller<-function(n)
{
	RN<-NULL;
	for(i in 1:n)
	{
		
		u1<-runif(1,min=0,max=1);
		u2<-runif(1,min=0,max=1);
		r<--2*log(u1);
		v<-2*(3.14)*u2;
		z1<-(sqrt(r))*cos(v);
		z2<-(sqrt(r))*sin(v);
		RN<-c(RN,z1,z2);
	}
	return(RN);
}
s<-boxmuller(50000);
print(s);


