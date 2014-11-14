library(MASS);
s2.kde<-kde2d(s2[1,],s2[2,],n=1000);
contour(s2.kde);
image(s2.kde);
#persp(s,phi=45,theta=30);
