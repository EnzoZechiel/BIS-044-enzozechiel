importIntoEnv(USvideos)
View(USvideos)

library(stringr)
library(tidyverse)

USvid <- read.csv("USvideos.csv")
attach(USvid)
if(!require("tidyverse")) install.packages("tidyverse")


USvid$publish_time <- striptime(USvid$publish_time, format = "%Y-%m-%dT%H:%M:%OS", tz = "UTC")
library(dplyr)

UStidy <- USvid %>% seperate(col=publish_time,into =c("PDate", "PTime"), "T" extra="merge")
Ustidy$PDate <- as.Date(UStidy$PDate)


UStidy$trending_date <- as.Date(UStidy$trending_date, "%y.%d.%m")

UStidy$title <- str_to_title(title)

View(UStidy)

