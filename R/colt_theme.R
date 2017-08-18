colt_theme <- function(
  default = identity,
  chr     = default,
  chr_    = default,
  chr2    = chr,
  chr2_   = chr,
  chr3    = chr,
  chr3_   = chr,

  yes     = default,
  no      = default,
  na      = default,
  null    = default,
  inf     = default,

  num     = default,
  num_    = num,
  num2    = num,
  num2_   = num,
  num3    = num,
  num3_   = num,

  hdr     = default,
  hdr2    = default,
  hdr3    = default,

  bullet  = default,
  bullet2 = bullet,
  bullet3 = bullet,
  chk     = default,
  chk2    = chk,
  chk3    = chk,
  radio   = default,
  radio2  = radio,

  log_info    = default,
  log_trace   = log_info,
  log_debug   = log_info,
  log_warn    = log_info,
  log_error   = log_info,
  log_fatal   = log_info,

  emph    = default,
  emph2   = emph
){
  res <- as.list(environment())
  class(res) <- c("colt_theme", "list")
  res
}





print.colt_theme <- function(x){
  npad <- max(nchar(names(x))) + 1
  blindtext <- paste0("%", npad, "s:  %s\n")

  for(fun in names(x)){
    cat(sprintf(blindtext, fun, x[[fun]]("Lorem ipsum dolor sit amet"), sep = ""))
  }
}



#' @export
set_theme <- function(x){
  stopifnot(inherits(x, "colt_theme"))
  options("colt.theme" = x)
}
