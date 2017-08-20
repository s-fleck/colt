#' @export
colt_theme <- function(
  clt_default = identity,
  clt_h1 = clt_default,
  clt_h2 = clt_default,

  clt_chr = clt_default,
  clt_chr_accent = clt_default,
  clt_chr_subtle = clt_default,

  clt_true = clt_default,
  clt_false = clt_default,
  clt_maybe = clt_default,

  clt_num = clt_default,
  clt_num_accent = clt_default,
  clt_num_subtle = clt_default,

  clt_bg = clt_default,
  clt_bg_subtle = clt_default,
  clt_bg_accent = clt_default,

  clt_na = clt_default,
  clt_nan = clt_default,
  clt_inf = clt_default,
  clt_null = clt_default,

  clt_info = clt_default,
  clt_message = clt_default,
  clt_warning = clt_default,
  clt_error = clt_default,

  clt_emph    = clt_default,
  clt_emph2   = clt_default
){
  res <- as.list(environment())
  class(res) <- c("colt_theme", "list")
  res
}




#' @export
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
