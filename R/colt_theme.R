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
  clt_emph2   = clt_default,
  .colors = 8L
){
  res <- as.list(environment())
  attr(res, "colors") <- .colors
  res <- res[names(res) != "colors"]
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


  txt <- paste0(
    x[["clt_h1"]]("\n\nColt example text\n\n"),

    x[["clt_chr"]](
      "This is an example text that showcases the most ",
      x[["clt_chr_accent"]]("important"), " elements of a ",
      x[["clt_chr_accent"]]("colt theme"), ". ",

      "The design idea was to provide a package developer with all the ",
      "theme elements he could need ", x[["clt_chr_subtle"]]("(but not more)"),
      ". ", "For example, colt provides theme elements to style ",
      "character (like this text) or numbers (", x[["clt_num"]]("12345"), ") ",
      "differently, but depending on the theme they can still be displayed in ",
      "the same color. Indeed, too many colors can be distracting.\n\n",

      "Whether you ", x[["clt_true"]]("agree"), " or ",
      x[["clt_false"]]("disagree"), " with the statement above (or ",
      x[["clt_maybe"]]("don't care"), ") is up to you. ",
      "It is very easy to create your own colt themes; they are just lists of ",
      "functions that are created with the constructor ",
      x[["clt_bg_accent"]]("colt_theme()"), ". ",


      sep = ""
    )


  )


  for(i in txt) cat(i, "\n")



}



#' @export
set_theme <- function(x){
  stopifnot(inherits(x, "colt_theme"))
  options("colt.theme" = x)
}
