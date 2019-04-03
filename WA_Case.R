##### Group Project
##### January 29th 2019
##### TEAM 2 
##### Web Analytics Alloy 
setwd("~/Documents/MBAN/Mod B/R/Project ")
library(readxl)
weekly_visits <- read_excel("Web Analytics Case Student Spreadsheet.xls", 
                            sheet = "Weekly Visits", skip = 4)


library(readxl)
fin <- read_excel("Web Analytics Case Student Spreadsheet.xls", 
                  sheet = "Financials", skip = 4)

library(readxl)
pounds <- read_excel("Web Analytics Case Student Spreadsheet.xls", 
                     sheet = "Lbs. Sold", skip = 4)
library(readxl)
daily_visits <- read_excel("Web Analytics Case Student Spreadsheet.xls", 
                           sheet = "Daily Visits", skip = 4)
#Summary Stats
summary(weekly_visits)
summary(fin)
summary(pounds)
summary(daily_visits)
#Standard Deviation 
sd(weekly_visits$Visits)
sd(weekly_visits$`Unique Visits`)
sd(fin$Revenue)
sd(fin$Profit)
sd(pounds$`Lbs. Sold`)


##Promotion Schedule
intial_promotion<- weekly_visits[1:14,]
pre_promotion<- weekly_visits[15:35,]
promotion<- weekly_visits[36:52,]
post_promotion<- weekly_visits[53:66,]


#Pre Website subsets
preweb_2005<-pounds[1:52,]
preweb_2006<-pounds[53:105,]
preweb_2007<-pounds[106:157,]
preweb_2008<-pounds[158:177,]
