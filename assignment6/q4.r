#this calculates the accepatance-rejection ratio
boxmuller<-function(n)
{
	RN<-NULL;
	val<-0;
	acc<-0;
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
			val<-val+1;	
		}
		acc=acc+1;
		#print(paste(k));
		r<-(-2)*log(k);
		cv<-u1/sqrt(k);
		sv<-u2/sqrt(k);
		z1<-sqrt(r)*cv;
		z2<-sqrt(r)*sv;
		RN<-c(RN,z1,z2);
	}
	print(paste(acc));
	print(paste(val));
	print(paste(acc/val));
	return(RN);
}
s<-boxmuller(500);
#s1<-5+s*sqrt(5);
#print(s1);


