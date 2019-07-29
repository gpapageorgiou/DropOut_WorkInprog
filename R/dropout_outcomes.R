dropout_outcomes <- function(dat) {
  sumdinum <- sum(dat$d_i.num)
  if (sumdinum > 0) {
    dat$di_all <- 1
  } else {
    dat$di_all <- 0
  }
  sumdeath <- sum(dat$death)
  if (all(sumdeath == 0, sumdinum > 0)) {
    dat$di_all_cens <- 1
  } else {
    dat$di_all_cens <- 0
  }
  if (any(sumdinum > 0, sumdeath > 0)) {
    dat$di_all_death <- 1
  } else {
    dat$di_all_death <- 0
  }
  dTime <- min(dat[dat$d_i.num == 1, 'obstime'])
  dat$dTime <- dTime
  dat
}
