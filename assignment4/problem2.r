xo<-5
count<-1	
f<-array(0,c(85))
initial<-((1597*xo+1))%% 244944	
ini1<-((1697*xo)+1)%%244911
ini2<-((1797*xo)+1)%%244923
ini3<-((1897*xo)+1)%%244977
ini4<-((1997*xo)+1)%%244887
u<-initial/244944
u2=ini1/244911;
u3=ini2/244923;
u4=ini3/244977;
u5=ini4/244987;
z<-0
xaxis<-0:84
x<-initial
x1<-ini1
x2<-ini2
x3<-ini3
x4<-ini4
x<-((1597*x)+1)%% 244944
while (count<5000){	
	u<-x/244944
	u2=x1/244911;
	u3=x2/244923;
	u4=x3/244977;
	u5=x4/244987;
	z<--5*log(u*u2*u3*u4*u5)
	f[floor(z)]<-f[floor(z)]+1
	print(paste(z))
	x <- ((1597*x)+1)%% 244944
	x1<-((1697*x1)+1)%%244911
	x2<-((1797*x2)+1)%%244923
	x3<-((1897*x3)+1)%%244977
	x4<-((1997*x4)+1)%%244887
	count<-count+1
}#using a while loop for the problem
print(f)
barplot(f,names.arg=xaxis,main="random variables with exponential distribution of mean=5",ylab="frquency",xlab="values")