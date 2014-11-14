geomdist<-function(n)
{
	RN<-NULL;
	for(i in 1:n)
	{
		u1<-runif(1,min=0,max=1);
		p<-0.4;#taking p=0.4
		q<-1-p;
		x<-floor(log(u1)/log(0.4))+1;
		RN<-c(RN,x);
	}
	return(RN);
}
s<-geomdist(50);

mass <- NULL;
for(i in 0:max(s))
{
	m <- sum(as.integer(i == s));
	mass <- c(mass,m);
}
mass <- mass/50;
x <- seq(0,max(s));