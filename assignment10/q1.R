#this calculates the standard brownian motion BM(0,1)
for(j in 1:10)
{
	z<-rnorm(5000,mean=0,sd=1);
	w<-NULL;wm1<-NULL;wm2<-NULL;
	t<-seq(0,5,length.out=5000);
	w[1]=0;
	for(i in 2:5000)
	{
		w[i]=w[i-1]+(sqrt(t[i]-t[i-1]))*(z[i]);
	}
	wm1<-c(wm1,w[2]);
	wm2<-c(wm2,w[5]);
	s<-w;
	plot(s,type="l",col="blue",ylim=c(-5,5));
	par(new=TRUE);
}
k1<-var(wm1);
k2<-mean(wm2);

	



