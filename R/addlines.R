addlines <- function(dat, tot.rows = 5) {
  n.rows <- nrow(dat)
  rowdiff <- tot.rows - n.rows
  rows <- dat[rep(nrow(dat), rowdiff), ]
  tmp <- rbind(dat, rows)
  tmp$obstime <- c(0, 2, 6, 12, 18)
  tmp$d_i <- rep(c("0", "X"), times = c(n.rows, rowdiff))
  tmp$pattern <- paste0(tmp$d_i[1], tmp$d_i[2], tmp$d_i[3], tmp$d_i[4], tmp$d_i[5])
  tmp
}