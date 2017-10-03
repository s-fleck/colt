# Make data available
data(clt_theme_light, clt_theme_dark, envir=environment())




.onLoad <- function(...) {
  op <- options()

  use_dark_theme <- is_console_dark()

  if (is.na(use_dark_theme)){
    op.default <- list(colt.theme = colt_theme())
  } else if (use_dark_theme) {
    op.default <- list(colt.theme = clt_theme_dark)
  } else {
    op.default <- list(colt.theme = clt_theme_light)
  }


  toset <- !(names(op.default) %in% names(op))
  if(any(toset)) options(op.default[toset])

  invisible()
}




.onAttach <- function(...){
  if (is.na(is_console_dark())){
    packageStartupMessage(paste(
      "Colt could not detect the console color theme. If you want to use terminal",
      "colors, please use colt::set_colt_theme(colt::clt_theme_light) or",
      "colt::set_colt_theme(colt::clt_theme_dark) to set an appropriate color theme.")
    )
  }
}




is_console_dark <- function(){
  if (requireNamespace("rstudioapi", quietly = TRUE)){
    use_dark_theme <- tryCatch(
      rstudioapi::getThemeInfo()[["dark"]],
      error = function(e) NA,
      silent = TRUE
    )
  } else {
    use_dark_theme <- NA
  }
}
