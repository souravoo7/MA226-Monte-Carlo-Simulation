density <-function (n1) 20*n1*((1-n1)^3) 
RejectionSampling <- function(n) 
{
	RN <- NULL
	for(i in 1:n)
	{
		OK <- 0
		while(OK<1)
		{
			T <- runif(1,min = 0, max = 1)
			U <- runif(1,min = 0, max = 1)	
			if(2.5*U <= density(T))
			{
				OK <- 1
				RN <- c(RN,T)
			}
		}
	}
	return(RN)
}
sample <-RejectionSampling(5000)
hist(sample, freq = TRUE, xlim = c(0,1), breaks = 100, main = "Rejection Sampling of f(x)=20x(x-1)^3");
