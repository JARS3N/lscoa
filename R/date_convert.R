date_convert <- function(u) {
  as.Date(gsub("st|nd|rd|th", "", u), format = "%d %B %Y") %>%
    format(., "%Y-%m-%d")
}
