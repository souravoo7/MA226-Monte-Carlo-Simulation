newnormal<-function(n,a){
	RN<-NULL;
	for(i in 1:n){
	z1<-rnorm(n=1,m=0,sd=1);
	z2<-rnorm(n=1,m=0,sd=1);
	x2<-8+2*(z1);
	v1<-1;
	v2<-2;
	cv<-2*a/(1*2);
	nmn<-5+cv*(v1/v2)*(x2-8);
	nvr<-1*sqrt(1-(cv*cv));
	x1<-nmn+nvr*z2;
	RN<-c(RN,x2);
	}
	return (RN);}
s<-newnormal(1000,-0.25);
s1<-rnorm(n=1000,m=8,sd=2);
plot(density(s));
#lines(s1,col="green");
