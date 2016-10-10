range_value <- function(x) {
  max(x, na.rm = T) - min(x, na.rm = T)
}