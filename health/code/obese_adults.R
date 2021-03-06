# Health: Obese adults, 2006-2008 #

# Source: Local Health, Public Health England
# URL: http://www.localhealth.org.uk
# Licence: Open Government Licence

library(tidyverse)

df <- read_csv("LocalHealth_All_indicators_Ward_data.csv") %>%
  filter(`Parent Name` == "Trafford",
         `Indicator Name` == "Obese adults, modelled estimate") %>%
  select(area_code = `Area Code`,
         area_name = `Area Name`,
         value = Value) %>%
  mutate(period = "2006 to 2008",
         indicator = "Adults classified as obese",
         measure = "Percentage",
         unit = "Persons") %>%
  select(area_code, area_name, indicator, period, measure, unit, value)

write_csv(df, "../data/obese_adults.csv")
