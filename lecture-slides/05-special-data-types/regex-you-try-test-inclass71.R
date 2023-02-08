# load stringr
library(stringr)

test_vec <- c("zebra", "xray", "apple", 
              "yellow", "color", "colour", 
              "summarize", "summarise"
              )

# end with a vowel -------------------------------------------------------------
str_subset(test_vec, 
           pattern = ""
           )

# start with x, y, or z --------------------------------------------------------
str_view_all(test_vec, 
             pattern = ""
             )
str_subset(test_vec, 
           pattern = "^"
           )

# do not contain x, y, or z ----------------------------------------------------
str_view_all(test_vec, 
             pattern = ""
             )

str_extract(test_vec, 
            pattern = ""
            )
str_extract_all(test_vec, 
                pattern = ""
                )

str_replace(test_vec, 
            pattern = "", 
            replace = ""
            )
str_replace_all(test_vec, 
                pattern = "", 
                replace = ""
                )

# contain British spelling (e.g. color vs colour) ------------------------------

  ## British English words ending in ‘our’ usually end in ‘or’ in American English

  ## Verbs in British English that can be spelled with either ‘ize’ or ‘ise’ at the end 
  ## are always spelled with ‘ize’ at the end in American English

str_view_all(test_vec, 
             pattern = ""
             )





