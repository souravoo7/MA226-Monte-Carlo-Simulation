

xo<-5
count<-1	
initial<-((1597*xo+1))%% 244944	
u<-initial/244944
print (paste(u))
x<-initial
x<-((1597*x)+1)%% 244944
while (count<101){	
	u<-x/244944
	print (paste(u))
	x <- ((1597*x)+1)%% 244944
	count<-count+1
}#using a while loop for the problem