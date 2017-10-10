## Test environments
* local ubuntu 17.04 install, R 3.4.0
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 0 notes

## Reverse dependencies

The only reverse dependency is 'tatoo', a package that I am also the author of
and that I have tested extensively with 'colt'.

## Comment

The last release was pretty recent, but this version incorporates an important
feature of the new RStudio version released today.

CRAN package check results give me 
"Namespace in Imports field not imported from: ‘crayon’"

I do not *call* any crayon functions, but crayon functions are the default
values for some arguments of the functions in this package as well as the
color themes supplied with this package (a colt_theme is a list of functions).

---
