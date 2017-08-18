#' @keywords internal
"_PACKAGE"


.onLoad <- function(...) {
  op <- options()

  op.testthis <- list(
    colt.theme = '_'
  )

  toset <- !(names(op.testthis) %in% names(op))
  if(any(toset)) options(op.testthis[toset])

  invisible()
}



