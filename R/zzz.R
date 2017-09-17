.onLoad <- function(...) {
  op <- options()

  op.default <- list(
    colt.theme = clt_theme_light
  )

  toset <- !(names(op.default) %in% names(op))
  if(any(toset)) options(op.default[toset])

  invisible()
}
