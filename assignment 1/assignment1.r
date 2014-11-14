newtonRaphson <- function (x){
	x - ((3*x*x-exp(x)) / (6*x-exp(x)))#inputfunction
}

x <- -10.0	# initial guess based on the graph
x1 <- 0	# sets x1 to 0 before the first loop
error <- 0.00001#the error is specified

while (abs(x1 - x) > error){	
	x1 <- x
	x <- newtonRaphson(x)
}#using a while loop for the problem

print (paste("Root: ", x))# the required output obtained