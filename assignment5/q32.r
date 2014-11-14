generateRandom <- function(n)
	{
		RN <- NULL;
		f <- c(0,0,0,0,0);
		p <- c(0.05, 0.25, 0.45, 0.15, 0.10);
		for(i in 1:n)
		{
			ok <- 0;
			while(ok < 1)
			{
				u <- runif(1, min=0, max=1);
				y <- floor(u*5) + 1;
				u0 <- runif(1, min=0, max=1);
				if(u0 <= p[y]/(2.25*0.2))
				{
					RN <- c(RN, y);
					ok <- 1;
					f[y] <- f[y]+1;
				}
			}
		}
		return(RN);
	}
r <- generateRandom(10);
print(r);
print(mean(r));
print(var(r));
plot(r, type="p");
