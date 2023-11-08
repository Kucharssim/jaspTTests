#' Independent Samples T-test
#'
#' @description Conduct a classical independent samples t-test.
#'
#' @param data Data frame containing the data.
#' @param dependent Character vector. Specify the columns that contain the dependent variable.
#' @param groupBy Character. Specify the grouping variable.
#'
#' @examples
#' independentSamplesTTest(data = sleep, dependent = "extra", groupBy = "group")
#' @export
independentSamplesTTest <- function(data, dependent, groupBy, formula = NULL) {
  ttest <- data.frame(dependent = dependent, t = NA, df = NA, p = NA)
  for(dep in dependent) {
    formula <- as.formula(paste(dep, groupBy, sep = "~"))
    res <- t.test(formula, data)
    ttest[ttest$dependent == dep, "t"]  <- res[["statistic"]]
    ttest[ttest$dependent == dep, "df"] <- res[["parameter"]]
    ttest[ttest$dependent == dep, "p"]  <- res[["p.value"]]
  }

  return(list(ttest = ttest))
}
