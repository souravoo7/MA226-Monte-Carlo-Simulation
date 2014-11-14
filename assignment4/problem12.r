xo<-5
count<-1	
f<-array(0,c(40))
initial<-((1597*xo+1))%% 244944	
u<-initial/244944
z<-0
xaxis<-0:39
x<-initial
x<-((1597*x)+1)%% 244944
while (count<5000){	
	u<-x/244944
	z<--5*log(u)
	f[floor(z)]<-f[floor(z)]+1
	print(paste(z))
	x <- ((1597*x)+1)%% 244944
	count<-count+1
}#using a while loop for the problem
print(f)
barplot(f,names.arg=xaxis,main="random variables with exponential distribution of mean=5",ylab="frquency",xlab="values")