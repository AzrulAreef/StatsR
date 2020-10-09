library(dplyr)
library(ggplot2)
library(statsr)

data("arbuthnot")
arbuthnot
dim(arbuthnot)
names(arbuthnot)
arbuthnot$boys

ggplot(data = arbuthnot,aes(x=year,y=girls))+geom_point()

arbuthnot$boys+arbuthnot$girls
arbuthnot <- arbuthnot %>% mutate(total = boys + girls) 

ggplot(data = arbuthnot, aes(x=year,y=total)) + geom_line() + geom_point()

arbuthnot <- arbuthnot %>% mutate(more_boys = boys>girls)


data(present)
range(present$year)
present <- present %>% mutate(total = boys+girls)
present <- present %>% mutate(prop_boys = boys/total)
ggplot(present, aes(x=year,y=prop_boys))+geom_line()+geom_point()
present <- present %>% mutate(more_boys = boys > girls)
present <- present %>% mutate(prop_boys_girls = boys/girls)
ggplot(present, aes(x=year,y= prop_boys_girls)) + geom_line() + geom_point()
max(present$total)
