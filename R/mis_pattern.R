mis_pattern <- function(dat.id, planned = c(0, 2, 6, 12, 18), 
                        timevar = 'obstime') {
  pattern <- as.numeric(!planned %in% dat.id[[timevar]])
  pattern <- ifelse(pattern == 0, 'O', 'X')
  pattern <- paste(pattern, collapse = "")
  dat$pattern <- pattern
  dat
}
