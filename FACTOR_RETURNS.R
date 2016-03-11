library(PerformanceAnalytics)
factor_returns <- as.xts(read.zoo("factor_return_US3AxiomaMH.csv", sep=",", format="%m/%d/%Y", header=TRUE))
#convert % to absloute number
factor_returns <-factor_returns/100

value <-factor_returns$Value
MTM <- factor_returns$Medium.Term.Momentum
size <- factor_returns$Size

vol <-  factor_returns$Volatility
returns <- merge.xts(value,MTM,size,vol)
colnames(returns) <- c ('Value', 'Medium Term Momentum', 'Size', 'vol')

chart.CumReturns(returns,
                 wealth.index=TRUE,
                 main="Buy & Hold: Growth of $1 investment",
                 ylab="$")

legend("topleft",c(colnames(returns)),cex=1,fill=(c("black","red","blue")))

charts.PerformanceSummary(returns)