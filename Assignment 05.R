importIntoEnv(USvideos)
View(USvideos)

USvid <- read.csv("USvideos.csv")
if(!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)


USvid$publish_time <- striptime(USvid$publish_time, format = "%Y-%m-%dT%H:%M:%OS", tz = "UTC")
library(dplyr)

UStidy <- USvid %>% seperate(col=publish_time,into =c("PDate", "PTime"), extra="merge")
View(UStidy)


UStidy$trending_date <- as.Date(UStidy$trending_date, "%y.%d.%m")

View(UStidy)

