colt_theme <- function(
  default = identity,
  h1 = default,
  h2 = default,
  h3 = default,
  chr1 = default,
  chr2 = default,
  chr3 = default,
  num1 = default,
  num2 = default,
  num3 = default,
  bullet = default,
  enum = default,
  trace = default,
  debug = default,
  info = default,
  warn = default,
  error = default,
  fatal = default
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
