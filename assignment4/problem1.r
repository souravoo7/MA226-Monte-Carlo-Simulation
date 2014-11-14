
xo<-5
count<-1	
initial<-((1597*xo+1))%% 244944	
u<-initial/244944
z<-0
x<-initial
x<-((1597*x)+1)%% 244944
while (count<5000){	
	u<-x/244944
	z<--5*log(u)
	print(paste(z))
	x <- ((1597*x)+1)%% 244944
	count<-count+1
}#using a while loop for the problem