
RejectionSampling <- function(n) 
{
	RN <- NULL;
	p<- 0;
	q<- 0;
	for(i in 1:n)
	{
		

		ok<-0;
		while(ok<1)
		{
			U1 <- runif(1,min = 0, max = 1);
			U2 <- runif(1,min = 0, max = 1);
			U3 <- runif(1,min = 0, max = 1);
			x<- -1*log(U1);
			q<-q+1;
			if(U2< exp(-((x-1)^2)/2) && U3<= 0.5)
			{
				ok<- 1;
				RN<- c(RN,x);
				p<- p+1;
				x<- -1*x;
			}
		}
	}

	print(paste(p/q));
	return(RN);
}
sample<- RejectionSampling(1000);
hist(sample,freq = TRUE, breaks = 100, main = "Rejection Sampling of normal from double exponential");