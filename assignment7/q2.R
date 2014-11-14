poisson<-function(n)
{
	RN<-NULL;
	for(i in 1:n)
	{
		u1<-runif(1,min=0,max=1);
		i1<-0;
		p<-exp(-2);#mean=2
		f<-p;
		#x<-i;
		while(u1>f)
		{
			p<-p*2/(1+i1);
			f<-f+p;
			i1<-i1+1;
		}
		x<-i1;
		RN<-c(RN,x);
	}
	return (RN);
}
s<-poisson(50);
mass <- NULL;
for(i in 0:max(s))
{
	m <- sum(as.integer(i == s));
	mass <- c(mass,m);
}
mass <- mass/50;
x <- seq(0,max(s));
plot(x,mass);
lines(x,mass,type='h');