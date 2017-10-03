#' Create and set color themes
#'
#' Colt comes with two default color themes: `clt_theme_light` and
#' `clt_theme_dark`. A `colt_theme` is just a list of functions, so it is
#' easy to create your own theme. Use `set_colt_theme()` to switch between
#' themes.
#'
#'
#' @param clt_default Default text style
#' @param clt_h1 Header Level 1
#' @param clt_h2 Header Level 2
#' @param clt_chr Text
#' @param clt_chr_accent Text (accented)
#' @param clt_chr_subtle Text (subtle)
#' @param clt_true TRUE
#' @param clt_false FALSE
#' @param clt_maybe Undecided
#' @param clt_num Numeric values
#' @param clt_num_accent Numeric values (accented)
#' @param clt_num_subtle Numeric values (subtle)
#' @param clt_bg Text background
#' @param clt_bg_subtle Text background (subtle)
#' @param clt_bg_accent Text background (accented)
#' @param clt_na NA values
#' @param clt_nan NAN values
#' @param clt_inf INF values
#' @param clt_null NULL values
#' @param clt_info INFO level messages
#' @param clt_message MESSAGE level messages
#' @param clt_warning Warnings
#' @param clt_error Errors
#' @param clt_emph Emphasis
#' @param clt_emph2 stronger Emphasis
#'
#' @return `colt_theme()` creates a new colt_theme Object.
#'
#' @examples
#' mytheme <- colt_theme(
#'   clt_h1 = crayon::combine_styles(crayon::red, crayon::bold)
#' )
#'
#' mytheme  # preview theme
#'
#' cat(clt_h1("Important"))
#'
#' set_theme(mytheme)
#' cat(clt_h1("Important"))
#'
#' set_theme(clt_theme_light)
#' cat(clt_h1("Important"))
#'
#' @export
colt_theme <- function(
  clt_default = crayon:::mypaste,
  clt_h1 = crayon:::mypaste,
  clt_h2 = crayon:::mypaste,

  clt_chr = crayon:::mypaste,
  clt_chr_accent = crayon:::mypaste,
  clt_chr_subtle = crayon:::mypaste,

  clt_true = crayon:::mypaste,
  clt_false = crayon:::mypaste,
  clt_maybe = crayon:::mypaste,

  clt_num = crayon:::mypaste,
  clt_num_accent = crayon:::mypaste,
  clt_num_subtle = crayon:::mypaste,

  clt_bg = crayon:::mypaste,
  clt_bg_subtle = crayon:::mypaste,
  clt_bg_accent = crayon:::mypaste,

  clt_na = crayon:::mypaste,
  clt_nan = crayon:::mypaste,
  clt_inf = crayon:::mypaste,
  clt_null = crayon:::mypaste,

  clt_info = crayon:::mypaste,
  clt_message = crayon:::mypaste,
  clt_warning = crayon:::mypaste,
  clt_error = crayon:::mypaste,

  clt_emph    = crayon:::mypaste,
  clt_emph2   = crayon:::mypaste
){
  res <- as.list(environment())
  class(res) <- c("colt_theme", "list")
  res
}




#' Printing Colt Themes
#'
#' @param x a `colt_theme`
#' @param ... ignored
#'
#' @export
print.colt_theme <- function(x, ...){
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




#' @param x A `colt_theme` Object. If `x` is `NULL`, colors will be switched
#' off
#'
#' @export
#' @return `set_theme()` returns the input theme Objects invisibly.
#' @rdname colt_theme
#'
set_theme <- function(x){
  if(is.null(x)) {
    set_theme(colt_theme())
  } else {
    stopifnot(inherits(x, "colt_theme"))
    options("colt.theme" = x)
  }

  invisible(x)
}
