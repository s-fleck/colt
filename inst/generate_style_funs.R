library(glue)
library(rprojroot)
devtools::load_all()

x <- colt_theme()

funs <- glue::glue('
    #\' @export
    {name} <- function(x, fun = options("colt.theme")[[1]]${name}){{
      fun(x)
    }}


  '
  , name = names(x)
)

funs <- c("# This file is generated automatically by inst/generate_style_funs.R.\n# Do not edit manually.\n\n", funs)

writeLines(
  funs,
  rprojroot::find_package_root_file("R", "styles.R")
)

devtools::document()
devtools::load_all()
