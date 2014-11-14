#this calculates BM with mean=0.06 and s.d.=0.3,starting from 5
for(j in 1:10)
{
	z<-rnorm(5000,mean=0,sd=1);
	w<-NULL;wm1<-NULL;wm2<-NULL;
	t<-seq(0,5,length.out=5000);
	w[1]=5;
	sig<-0.3;
	mu<-0.06;
	for(i in 2:5000)
	{
		w[i]=w[i-1]+mu*(t[i]-t[i-1])+sig*(sqrt(t[i]-t[i-1]))*(z[i]);
	}
	wm1<-c(wm1,w[2]);
		wm2<-c(wm2,w[5]);
	s<-w;
	plot(s,type="l",col="red",ylim=c(4,6.5));
	par(new=TRUE);
}
k1<-mean(wm1);
k2<-mean(wm2);
