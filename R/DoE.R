DoE <- function(u) {
  txt <- "^EXPIRY DATE "
  grep(txt, u, value = T) %>%
    gsub(txt, "", .) %>%
    date_convert(.)
}
