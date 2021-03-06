# Housing: Social rented housing, 2011 #

# Source: Table KS401EW, ONS 2011 Census
# URL: https://www.nomisweb.co.uk/census/2011/ks402ew
# Licence: Open Government Licence

df <- read_csv("http://www.nomisweb.co.uk/api/v01/dataset/NM_619_1.data.csv?date=latest&geography=E05000819...E05000839&rural_urban=0&cell=200&measures=20301&select=date_name,geography_name,geography_code,rural_urban_name,cell_name,measures_name,obs_value,obs_status_name") %>%
  select(area_code = GEOGRAPHY_CODE,
         area_name = GEOGRAPHY_NAME,
         value = OBS_VALUE) %>%
  mutate(period = "2011",
         indicator = "Social rented housing",
         measure = "Percentage",
         unit = "Households") %>%
  select(area_code, area_name, indicator, period, measure, unit, value)

write_csv(df, "../data/social_rented_housing.csv")
