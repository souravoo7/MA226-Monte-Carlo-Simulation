lcgx <- function(a, x0) (a*x0)%%244944;
a1597 <- array(0, c(20, 5));#array storing for 1597
a51749 <- array(0, c(20, 5));#array storing for 51749
range <- c(100, 500, 1000, 5000, 10000);#defining a array storing the frequency 
for(m in 1:5)
{
	x1597 <- 1;
	x51749 <- 1;
	for(count in 1:range[m])
	{
		u1597 <- x1597/244944.0;
		u51749 <- x51749/244944.0;#generating the sequence
		x1597 <- lcgx(1597, x1597);
		x51749 <- lcgx(51749, x51749);
		temp1 <- u1597/0.05;# finding the field or range of the data
		temp2 <- u51749/0.05;
		a1597[(floor(temp1)+1), m] <- a1597[(floor(temp1)+1), m]+1;#storing frequency in array
		a51749[(floor(temp2)+1), m] <- a51749[(floor(temp2)+1), m]+1;#storing frequency in array
	}
}
print(a1597);
print(a51749);