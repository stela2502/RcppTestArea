context( 'Class usage')

set.seed(1)
dat = matrix(round(rnorm(9000,mean = 1, sd = 1)),ncol=100)
dat[which(dat < 1)] = 0
colnames(dat) <- paste('Sample', 1:100)
rownames(dat) <- paste( 'gene', 1:90)

x <- as_RcppTestArea( dat )

expect_equal( class( x )[1], c('RcppTestArea') )
