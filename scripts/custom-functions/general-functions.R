smallNum <- function(number){
  
  if(as.numeric(number) < 11) {
    return(english::words(as.numeric(number)))
  } else {
    return(number)
  }
}


format_p <- function(pvalue, operator = TRUE){
  
  if(pvalue < .001) {
    pvalue_out <- "< .001"
    pvalue_out <- ifelse(isFALSE(operator), str_replace(pvalue_out, "^< ", ""), pvalue_out)
  } else {
    pvalue_out <- formatC(pvalue, digits = 3, width = 3, format = 'f') |> str_replace(string = _, pattern = "^0", "= ")
    pvalue_out <- ifelse(isFALSE(operator), str_replace(pvalue_out, "^= ", ""), pvalue_out)
  }
  return(pvalue_out)
}
