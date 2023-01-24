table_names <- c("crime_scene_report", "drivers_license", "facebook_event_checkin",
                 "get_fit_now_check_in", "get_fit_now_member", "income", "interview",
                 "person")

url_base <- "https://raw.githubusercontent.com/earobinson95/stat331-calpoly/master/practice-activities/data/sql-murder/"

# For each table name, read the tables in and store them as the name of the table
purrr::walk(table_names, function(x) {
  assign(x, readr::read_csv(paste0(url_base, x, ".csv")), envir = .GlobalEnv)
})
