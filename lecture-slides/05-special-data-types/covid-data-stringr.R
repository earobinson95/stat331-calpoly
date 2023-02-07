# load the tidyverse library (contains tidyr, stringr, dplyr, etc.)
library(tidyverse)

# read in the data
messy_data <- read_csv(here::here("lecutre-slides",
                                  "05-special-data-types",
                                  "data_2023-Jan-26.csv")
                       )

clean_data <- messy_data |> 
  # , - get each "variable name : variable" pair in its own row
  #requires tidyr 1.3.0
  separate_longer_delim(variants, 
                        delim = ",") |>
  # : - separate each of the variable name : variable value pairs into their own columns
  separate_wider_delim(col = variants, 
                       delim = ":", 
                       names = c("variable", "value")
                       ) |> 
  # use stringr and regex to remove all the "junk"
  mutate(across(variable:value, ~ str_trim(.x)),
         across(variable:value, ~ str_remove_all(.x, "[:punct:]")),
  ) |> 
  # transform the data from long to wide format so each variable is in its own column
  pivot_wider(id_cols = areaType:date,
              names_from = variable,
              values_from = value,
              values_fn = list
              ) |> 
  # extra step: one of the benefits of a tibble is you can "nest data within data"
  # unnest the data so each row is a date + variate combination
  unnest(cols = c(variant, cumWeeklySequenced, newWeeklyPercentage)) |> 
  # convert the cumulative weekly and new weekly variables to numeric
  # convert character variables to factors
  mutate(across(cumWeeklySequenced:newWeeklyPercentage, ~ as.numeric(.x)),
         across(c("areaType":"areaCode", "variant"), ~ as.factor(.))
         ) |> 
  # sort the data by date (old to new)
  arrange(date)

clean_data 
