#' @title Wiki Graph Dataset
#' @description
#' A dataset representing a weighted, directed graph. This dataset can be used
#'    to test graph algorithms like Dijkstra's algorithm.
#'
#' @format A data frame with 18 rows and 3 variables:
#' \describe{
#'   \item{v1}{The starting node (integer).}
#'   \item{v2}{The ending node (integer).}
#'   \item{w}{The weight of the edge between nodes (numeric).}
#' }
#'
#' @references
#' Dijkstra's algorithm, see \url{https://en.wikipedia.org/wiki/Dijkstra\%27s_algorithm}.
#'
#' Graph theory, see \url{https://en.wikipedia.org/wiki/Graph_(mathematics)}.
#'
#' @source Generated for graph algorithm testing.
"wiki_graph"
