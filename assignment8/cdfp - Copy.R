breaks<-seq(1.4,7.8,by=0.2);
duration<-s2[1,];
duration.cut=cut(duration,breaks,right=FALSE);
duration.freq=table(duration.cut);
duration.cumfreq=cumsum(duration.freq);
duration.cumrelfreq=cumsum(duration.freq)/1000;
plot(duration.cumrelfreq,type="b");