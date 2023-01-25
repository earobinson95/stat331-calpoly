avocado <- read_csv(here::here("lab-assignments", "lab4", "avocado_orig.csv")) |> 
  rename(
    Size_Small = `4046`,
    Size_Large = `4225`,
    Size_XL = `4770`
  )

cali <- tibble(region = c("LosAngeles", "SanDiego",
                          "Sacramento", "SanFrancisco")
)

cali_avo <- avocado |> 
  semi_join(cali, by = "region") 

write_csv(cali_avo, "avocado_clean.csv", na = "")