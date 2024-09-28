#' @title Euclidean
#' @description
#' This function computes the greatest common divisor (GCD) of two integers
#' using the Euclidean algorithm
#'
#' @param a An integer, one of the two numbers for which the GCD is to be computed
#' @param b An integer, the other number for which the GCD is to be computed
#'
#' @return An integer representing the greatest common divisor of \code{a} and \code{b}
#' @export
#'
#' @examples euclidean(123612, 13892347912)
#'
euclidean <- function(a, b) {
  while (b != 0) {
    remainder <- a %% b
    a <- b
    b <- remainder
  }
  return(a)
}
