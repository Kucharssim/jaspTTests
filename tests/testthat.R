library(testthat)

remotes::install_github("kucharssim/jaspTools@upgradeTests")
library(jaspTools)
setupJaspTools()
jaspTools::testModule()
