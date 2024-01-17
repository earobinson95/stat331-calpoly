library(tidyverse)
library(sjmisc)
library(cobalt)

teacher_evals_orig <- read_csv(here::here("lab-assignments", "Lab3-dplyr", "teacher_evals_orig.csv"))
teacher_evals <- teacher_evals_orig |> 
  rowwise() |> 
  mutate(academic_degree = case_when(
    no_dgr == 1 ~ "no_dgr",
    prof == 1 ~ "prof",
    ma == 1 ~ "ma",
    dr == 1 ~ "dr"
  ),
  .after = maximum_score) |> 
  mutate(weekday = case_when(
    Monday    == 1 ~ "Monday",
    Tuesday   == 1 ~ "Tuesday",
    Wednesday == 1 ~ "Wednesday",
    Thursday  == 1 ~ "Thursday",
    Friday    == 1 ~ "Friday",
    Saturday  == 1 ~ "Saturday",
    Sunday    == 1 ~ "Sunday"
  ),
  .after = Sunday) |> 
  mutate(time_of_day = case_when(
    class_end_by_10    == 1 ~ "<10",
    class_end_10_14   == 1 ~ "10-14",
    class_end_14_18 == 1 ~ "14-18",
    class_end_18_22  == 1 ~ ">18"
  ),
  .after = class_end_18_22) |> 
  mutate(gender = case_when(
    female    == 1 ~ "female",
    male   == 1 ~ "male"
  ),
  .after = male) |>
  ungroup() |> 
  select(-c(no_dgr:dr, Monday:Sunday, class_end_by_10:class_end_18_22, female:male))

write_csv(teacher_evals, file = here::here("lab-assignments", "Lab3-dplyr", "teacher_evals.csv"))
