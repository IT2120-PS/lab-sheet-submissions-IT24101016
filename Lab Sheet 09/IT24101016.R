setwd("C:\\Users\\jayas\\Desktop\\IT24101016")

##Question 01##
set.seed(123)
bake <- rnorm(25, mean=45 , sd=2)
bake

##Question 02##
t.test(bake, mu=46, alternative="less")