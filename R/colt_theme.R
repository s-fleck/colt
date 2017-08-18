colt_theme <- function(
  default = identity,
  chr     = default,
  chr2    = chr,
  chr3    = chr,
  chr4    = chr,
  chr5    = chr,
  chr6    = chr,

  num     = default,
  num2    = num,
  num3    = num,
  num4    = num,
  num5    = num,
  num6    = num,

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
  enum    = default,

  info    = default,
  trace   = info,
  debug   = info,
  warn    = info,
  error   = info,
  fatal   = info,

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



set_theme <- function(x){
  stopifnot(inherits(x, "colt_theme"))
  options("colt.theme" = x)
}
