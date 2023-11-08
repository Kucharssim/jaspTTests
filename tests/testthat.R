library(testthat)

remotes::install_github("kucharssim/jaspTools@upgradeTests")
library(jaspTools)
setupJaspTools()
jaspTools::testVignettes()
jaspTools::runTestsTravis(module = getwd())
