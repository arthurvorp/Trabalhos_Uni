library(rvest)
library(dplyr)


url = "https://finance.yahoo.com/markets/world-indices"
yahoo_web = read_html(url)
yahoo_nos = html_nodes(yahoo_web, "table")
yahoo = html_table(yahoo_nos)

yahoo = as.data.frame(yahoo)
yahoo = yahoo[,-3]

library(readr)

write_csv(yahoo, "yahoo.csv")



