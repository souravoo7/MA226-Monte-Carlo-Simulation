vdc<-function(n){
	z<-NULL;
	for(i in 1:n)
	{
		j<-i;s<-0;k<-1;
		while(j!=0)
		{
			s<-s+((j%%2)/(2^(k)));
			j<-j%/%2;
			k<-k+1;
		}
		z<-c(z,s);
	}
	return(z);
}
f<-vdc(1000);


