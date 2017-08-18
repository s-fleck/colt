colt_dark <- colt_theme(
  default = crayon::white,
  emph    = crayon::italic,
  emph2   = crayon::bold,
  hdr     = function(x) crayon::bold(crayon::yellow(x)),
  hdr2    = function(x) crayon::italic(crayon::yellow(x)),
  hdr3    = function(x) crayon::blurred(crayon::yellow(x)),
  bullet  = function(x) paste(clisymbols::symbol$bullet, x),
  bullet2 = function(x) paste(clisymbols::symbol$circle_double, x),
  bullet3 = function(x) paste(clisymbols::symbol$square_small, x),
  radio   = function(x) paste(clisymbols::symbol$radio_on,  x),
  radio2  = function(x) paste(clisymbols::symbol$circle_dotted, x),
  chk     = function(x) paste(crayon::green(clisymbols::symbol$tick), x),
  chk2    = function(x) paste(crayon::red(clisymbols::symbol$cross), x),
  chk3    = function(x) paste(crayon::silver(clisymbols::symbol$checkbox_off), x)
)




.onLoad <- function(...) {
  op <- options()

  op.testthis <- list(
    colt.theme = colt_dark
  )

  toset <- !(names(op.testthis) %in% names(op))
  if(any(toset)) options(op.testthis[toset])

  invisible()
}
