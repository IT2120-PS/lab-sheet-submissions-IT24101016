setwd("C:\\Users\\jayas\\Desktop\\IT24101016")
getwd()

data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

##01##
popmn<-mean(data$Weight.kg.)
popmn
popsd<-sd(data$Weight.kg.)
popsd

##02##
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.means
s.sd<-apply(samples,2,sd)
s.sd

##03##
print(truemean<-mean(s.means))
print(truesd<-sd(s.sd))

popmn
truemean

popsd
truesd
