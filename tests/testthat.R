library(testthat)

# dirty fix to install a development version of jaspTools
remotes::install_github("kucharssim/jaspTools@upgradeTests")
library(jaspTools)
setupJaspTools()
jaspTools::testModule()
