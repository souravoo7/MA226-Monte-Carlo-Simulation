newnormal<-function(n,a){
	RN<-NULL;
	for(i in 1:n){
	z1<-rnorm(n=1,m=0,sd=1);
	z2<-rnorm(n=1,m=0,sd=1);
	x1<-5+1*(z1);
	v1<-1;
	v2<-2;
	cv<-2*a/(1*2);
	#nmn<-5+cv*(v1/v2)*(x2-8);
	nvr<-2*sqrt(1-(cv*cv));
	x2<-8+(cv*v2*z1)+nvr*z2;
	RN<-cbind(RN,c(x1,x2));
	}
	return (RN);
}
s<-newnormal(1000,0.25);
s1<-newnormal(1000,0);
s2<-newnormal(1000,-0.25);
