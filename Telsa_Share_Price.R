#Quantmod -> Package in R, useful for Quantitative Researcher or Trader where they make use of Mathematical modeling to analyse a stock.

# Install QUANTMOD if not available
if(!require("quantmod"))
{
  install.packages("quantmod")
  library(quantmod)
}

#getSymbols syntax -> getSymbols('ticker',src='',from=YYYY-MM-DD,to=YYYY-MM-DD)
start=as.Date("2021-02-15")
end=as.Date("2022-02-21")

#Plot can use Open or High or Low or Close or Volume or Adjusted
getSymbols("TSLA",src='yahoo',from=start,to=end)

#In the above, we took the data prices from the "Yahoo Finance". "NFLX" is the ticker symbol for the Netflix stock.

#candleChart consists of Open,High,Low,Close in single stick....
candleChart(TSLA,up.col="green",dn.col="red",theme = "white")
#addSMA -> Simple Moving Average, gives smooth curve of the trading stock...
addSMA(n=c(30,100))

#addRSI -> Relative Strength Index, gives us the price momentum of the stock. It scales from 0 to 100. Generally, below 30 is considered as oversold zone and above 70 is considered as overbought zone.
addRSI(n = 14, maType = "EMA", wilder = TRUE)
