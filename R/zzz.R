#' @export
colt_light <- colt_theme(
  clt_default = identity,
  clt_h1 = function(x) crayon::bold(crayon::cyan(x)),
  clt_h2 = function(x) crayon::cyan(x),

  clt_chr = crayon::black,
  clt_chr_accent = crayon::blue,
  clt_chr_subtle = crayon::silver,

  clt_true = crayon::green,
  clt_false = crayon::red,
  clt_maybe = crayon::yellow,

  clt_num = crayon::black,
  clt_num_accent = crayon::blue,
  clt_num_subtle = crayon::silver,

  clt_bg = identity,
  clt_bg_subtle = crayon::make_style(grDevices::grey(0.9), bg = TRUE, grey = TRUE),
  clt_bg_accent = crayon::make_style("#F3F315", bg = TRUE),

  clt_na = crayon::magenta,
  clt_nan = crayon::magenta,
  clt_inf = crayon::magenta,
  clt_null = crayon::magenta,

  clt_info = identity,
  clt_message = crayon::green,
  clt_warning = crayon::yellow,
  clt_error   = crayon::red,

  clt_emph    = crayon::italic,
  clt_emph2   = crayon::bold
)



#' @export
colt_dark <- colt_theme(
  clt_default = identity,
  clt_h1 = function(x) crayon::bold(crayon::cyan(x)),
  clt_h2 = function(x) crayon::cyan(x),

  clt_chr = crayon::white,
  clt_chr_accent = crayon::make_style("#77B5FE"),
  clt_chr_subtle = crayon::silver,

  clt_true = crayon::green,
  clt_false = crayon::red,
  clt_maybe = crayon::yellow,

  clt_num = crayon::white,
  clt_num_accent = crayon::blue,
  clt_num_subtle = crayon::silver,

  clt_bg = identity,
  clt_bg_subtle = crayon::make_style(grDevices::grey(0.2), bg = TRUE, grey = TRUE),
  clt_bg_accent = crayon::make_style("#AA381E", bg = TRUE),

  clt_na = crayon::magenta,
  clt_nan = crayon::magenta,
  clt_inf = crayon::magenta,
  clt_null = crayon::magenta,

  clt_info = identity,
  clt_message = crayon::green,
  clt_warning = crayon::yellow,
  clt_error   = crayon::red,

  clt_emph    = crayon::italic,
  clt_emph2   = crayon::bold
)




.onLoad <- function(...) {
  op <- options()

  op.default <- list(
    colt.theme = colt_light
  )

  toset <- !(names(op.default) %in% names(op))
  if(any(toset)) options(op.default[toset])

  invisible()
}
