i<-1;
wm2<-NULL;
for(j in 1:1000)
{
	z<-rnorm(500,mean=0,sd=1);
	w<-NULL;
	t<-seq(0,5,length.out=500);
	w[1]=1;
	sig<-0.4;
	mu<--1;
	for(i in 2:500)
	{
		w[i]=w[i-1]*(exp(((mu-(sig*sig/2))*(t[i]-t[i-1]))+(sig*(sqrt(t[i]-t[i-1]))*(z[i]))));
	}
	wm2[j]=w[500];
	
	s<-w;
	plot(s,type="l",col="black",ylim=c(0,110));
	par(new=TRUE);
}
k1<-print(k2);
