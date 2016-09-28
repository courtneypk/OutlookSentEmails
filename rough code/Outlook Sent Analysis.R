library(readr)
library(dplyr)


Outlook_emails_2016_FY <- 
    read_tsv("~/Documents/Partners/Performance Review/Annual Review/2016/Outlook emails 2016 FY.tsv")


Outlook_emails_2016_FY$`In Folder`<-NULL
Outlook_emails_2016_FY$X8<-NULL
Outlook_emails_2016_FY$From<-NULL

by_target <- group_by(Outlook_emails_2016_FY, To)

per_target <- summarise(by_target, count=n())

arrange(per_target, desc(count))
