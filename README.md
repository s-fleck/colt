``` r
library(colt)
```

Using colt styles
-----------------

``` r
fancy <- function(x) cat(
  colt::hdr("Fancy text\n\n"),
  colt::bullet("example\n"),
  colt::bullet2("example\n"),
  colt::bullet3("example\n\n"),
  colt::chr("By specifying a few design elements it is easy to assign new themes to cli text\n"),
  colt::chr("Do you agree?\n\n"),
  colt::chk("I agree\n"),
  colt::chk2("I don't agree\n"),
  colt::chk3("I don't want to answer\n")
)
```

Changing the Theme
------------------

The acitive theme is stored in `options("colt.theme")`. It can easily be changed with `colt::set_theme()`.

``` r
colt::set_theme(colt_light)
fancy()
```

![light theme](light.png)

``` r
colt::set_theme(colt_dark)
fancy()
```

![dark theme](dark.png)

Theme element names (subject to change)
---------------------------------------

A colt theme is created with the `colt_theme()` constructor. It is just a list of functions that get applied to the text. A print method exists for previewing. Colt styles are named semantically rather than directly with a color (e.g. "yes" instead of "green").

``` r
names(colt_light)
print(colt_light)
```

![preview](preview.png)
