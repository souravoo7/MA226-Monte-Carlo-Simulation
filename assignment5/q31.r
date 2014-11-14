generateRandom <- function(x)
	{
		if(x < 0.45)		{return(3);}
		else if(x < 0.70)	{return(2);}
		else if(x < 0.85)	{return(4);}
		else if(x < 0.95)	{return(5);}
		else				{return(1);}
	}
u <- runif(10, min=0, max=1);#u contains 10 random numbers
r <- unlist(lapply(u, generateRandom));#r contains the generated random variables X
print(r);#printing the array r
print(var(r));#calculate variance
print(mean(r));#calculate mean


