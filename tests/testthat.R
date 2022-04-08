library(jaspTools)
library(testthat)

jaspTools::testVignettes()
jaspTools::runTestsTravis(module = getwd())
