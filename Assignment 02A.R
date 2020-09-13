#date()
DateTime <- date()
class(DateTime)
typeof(DateTime)
# Difference of dates
AgeDays = abs(as.double(Sys.Date() - as.Date("2020-12-04")))
AgeYears = AgeDays/365.25
numeric <- AgeDays
print(paste("Enzo, there are", AgeDays, "days left in semester."))

