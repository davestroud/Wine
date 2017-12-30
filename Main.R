library(readr)
library(dplyr)
library(ggplot2)
library(tidyverse)
library(data.table)
library(DT)
library(kableExtra)
library(knitr)

wines <- read_csv("winemag-data_first150k.csv")
dim(wines)

temp<-wines %>%
  filter(points >95) %>%
  group_by(country)%>%
  summarise(n = n()) %>%
  arrange(desc(n)) %>%
  head(n = 10)

kable(temp)


temp %>%    
  ggplot(aes(x =reorder(country,n), y =  n )) +
  geom_bar(stat='identity',colour="white", fill = c("darkorchid4")) +
  labs(x = 'country', y = 'Count', title = 'Best Wine Producing Country - Point wise') +
  coord_flip() + 
  theme_bw()


