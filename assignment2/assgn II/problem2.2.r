

xo<-5
count<-1	
initial<-((51749*xo+1))%% 244944	
u<-initial/244944
print (paste(u))
x<-initial
x<-((51749*x)+1)%% 244944
while (count<100){	
	u<-x/244944
	print (paste(u))
	x <- ((51749*x)+1)%% 244944
	count<-count+1
}#using a while loop for the problem