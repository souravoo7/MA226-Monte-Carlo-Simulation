controlVariates <- function(n)
	{
		u <- runif(n, min=0, max=1);
		y <- exp(sqrt(u));
		x <- sqrt(u);
		y1 <- y + (cov(x,y)/var(x))*(x - mean(x));
		error <- qnorm(0.975)*sqrt(var(y1)/n);
		print(n);
		cat("estimate:", mean(y1), "\n");
		cat("confidence interval:", mean(y1)-error, ",", mean(y1)+error, "\n");
		cat("percentage reduction:", (100*(cor(x,y))^2),"\n");
	}

M <- c(100, 1000, 10000, 100000);
for(i in M)
	controlVariates(i);
