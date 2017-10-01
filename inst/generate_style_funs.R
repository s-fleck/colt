library(glue)
library(rprojroot)
devtools::load_all()

x <- colt_theme()

funs <- glue::glue('
    #\' @export
    #\' @rdname colt_styles
    {name} <- function(x, fun = options("colt.theme")[[1]]${name}){{
      fun(x)
    }}


  '
  , name = names(x)
)

funs <- c(
  glue::glue("
    # This file is generated automatically by inst/generate_style_funs.R.
    # Do not edit manually.

    #' Colt style elements
    #'
    #' @name colt_styles
    #' @param x a character vector
    #' @param fun a styling function
    #'
  "),
  funs
)

writeLines(
  funs,
  rprojroot::find_package_root_file("R", "styles.R")
)

devtools::document()
devtools::load_all()
