#' @export
colt_light <- colt_theme(
  default = identity,
  chr     = crayon::black,
  chr_    = crayon::silver,
  chr2    = crayon::make_style("#ff2222"),
  chr2_   = crayon::make_style("#884444"),
  chr3    = crayon::make_style("#228822"),
  chr3_   = crayon::make_style("#66aa66"),

  yes     = crayon::green,
  no      = crayon::red,
  na      = crayon::yellow,
  null    = crayon::magenta,
  inf     = crayon::magenta,

  num     = default,
  num_    = default,
  num2    = default,
  num2_   = default,
  num3    = default,
  num3_   = default,

  hdr     = function(x) crayon::underline(crayon::bold(crayon::cyan(x))),
  hdr2    = function(x) crayon::underline(crayon::cyan(x)),
  hdr3    = function(x) crayon::italic(crayon::cyan(x)),

  bullet  = function(x) paste(clisymbols::symbol$bullet, x),
  bullet2 = function(x) paste(clisymbols::symbol$circle_double, x),
  bullet3 = function(x) paste(clisymbols::symbol$square_small, x),
  chk     = function(x) paste(crayon::green(clisymbols::symbol$tick), x),
  chk2    = function(x) paste(crayon::red(clisymbols::symbol$cross), x),
  chk3    = function(x) paste(crayon::silver(clisymbols::symbol$checkbox_off), x),
  radio   = function(x) paste(clisymbols::symbol$radio_on,  x),
  radio2  = function(x) paste(clisymbols::symbol$circle_dotted, x),

  # info    = default,
  # trace   = info,
  # debug   = info,
  # warn    = info,
  # error   = info,
  # fatal   = info,

  emph    = crayon::italic,
  emph2   = crayon::bold
)



#' @export
colt_dark <- colt_theme(
  default = identity,
  chr     = crayon::white,
  chr_    = crayon::silver,
  chr2    = crayon::make_style("#ff2222"),
  chr2_   = crayon::make_style("#884444"),
  chr3    = crayon::make_style("#22ff22"),
  chr3_   = crayon::make_style("#448844"),

  yes     = crayon::green,
  no      = crayon::red,
  na      = crayon::yellow,
  null    = crayon::magenta,
  inf     = crayon::magenta,

  num     = default,
  num_    = default,
  num2    = default,
  num2_   = default,
  num3    = default,
  num3_   = default,

  hdr     = function(x) crayon::underline(crayon::bold(crayon::cyan(x))),
  hdr2    = function(x) crayon::underline(crayon::cyan(x)),
  hdr3    = function(x) crayon::italic(crayon::cyan(x)),

  bullet  = function(x) paste(clisymbols::symbol$bullet, x),
  bullet2 = function(x) paste(clisymbols::symbol$circle_double, x),
  bullet3 = function(x) paste(clisymbols::symbol$square_small, x),
  chk     = function(x) paste(crayon::green(clisymbols::symbol$tick), x),
  chk2    = function(x) paste(crayon::red(clisymbols::symbol$cross), x),
  chk3    = function(x) paste(crayon::silver(clisymbols::symbol$checkbox_off), x),
  radio   = function(x) paste(clisymbols::symbol$radio_on,  x),
  radio2  = function(x) paste(clisymbols::symbol$circle_dotted, x),

  # log_info    = default,
  # log_trace   = info,
  # log_debug   = info,
  # log_warn    = info,
  # log_error   = info,
  # log_fatal   = info,

  emph    = crayon::italic,
  emph2   = crayon::bold
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

