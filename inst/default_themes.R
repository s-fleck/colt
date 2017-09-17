#' @export
clt_theme_light <- colt_theme(
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
clt_theme_dark <- colt_theme(
  clt_default = identity,
  clt_h1 = crayon::bold,
  clt_h2 = crayon::italic,

  clt_chr = crayon::white,
  clt_chr_accent = crayon::make_style("#7CB9E8", colors = 256),
  clt_chr_subtle = crayon::silver,

  clt_true = crayon::green,
  clt_false = crayon::red,
  clt_maybe = crayon::yellow,

  clt_num = crayon::white,
  clt_num_accent = crayon::blue,
  clt_num_subtle = crayon::silver,

  clt_bg = identity,
  clt_bg_subtle = crayon::make_style("#333333", bg = TRUE, grey = TRUE, colors = 256),
  clt_bg_accent = crayon::make_style("#3B3B6D", bg = TRUE, colors = 256),

  clt_na = crayon::magenta,
  clt_nan = crayon::magenta,
  clt_inf = crayon::magenta,
  clt_null = crayon::magenta,

  clt_info = identity,
  clt_message = crayon::green,
  clt_warning = crayon::yellow,
  clt_error   = crayon::red,

  clt_emph    = crayon::italic,
  clt_emph2   = crayon::bold,
  .colors = 256
)



clt_theme_dark_8 <- colt_theme(
  clt_default = identity,
  clt_h1 = function(x) crayon::bold,
  clt_h2 = function(x) crayon::cyan(x),

  clt_chr = crayon::white,
  clt_chr_accent = crayon::cyan,
  clt_chr_subtle = crayon::silver,

  clt_true = crayon::green,
  clt_false = crayon::red,
  clt_maybe = crayon::yellow,

  clt_num = crayon::white,
  clt_num_accent = crayon::blue,
  clt_num_subtle = crayon::silver,

  clt_bg = identity,
  clt_bg_subtle = crayon::make_style(grDevices::grey(0.2), bg = TRUE, grey = TRUE),
  clt_bg_accent = crayon::bgMagenta,

  clt_na = crayon::magenta,
  clt_nan = crayon::magenta,
  clt_inf = crayon::magenta,
  clt_null = crayon::magenta,

  clt_info = identity,
  clt_message = crayon::green,
  clt_warning = crayon::yellow,
  clt_error   = crayon::red,

  clt_emph    = crayon::italic,
  clt_emph2   = crayon::bold,
  .colors = 8
)




devtools::use_data(clt_theme_light)
devtools::use_data(clt_theme_dark)
devtools::use_data(clt_theme_dark_8)
