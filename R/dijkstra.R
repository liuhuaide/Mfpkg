#' @title Dijkstra
#' @description
#' This function calculates the shortest paths
#'     from a starting node to all other nodes
#'     in a graph using Dijkstra's algorithm.
#'
#' @param graph A matrix or data frame representing the graph, where each row is an edge.
#'        The first column should be the starting node, the second column the ending node,
#'        and the third column the weight
#' @param init_node An integer representing the starting node for the algorithm
#'
#' @return A list containing two elements:
#'         \describe{
#'           \item{distances}{A numeric vector representing the shortest distances from the start node to all other nodes.}
#'           \item{previous}{An integer vector where each element represents the previous node in the shortest path.}
#'         }
#' @export
dijkstra <- function(graph, init_node) {
  if (!is.data.frame(graph)) {
    stop("graph must be a data.frame")
  }
  if (!all(c("v1", "v2", "w") %in% names(graph))) {
    stop("graph must include 'v1', 'v2', 'w' ")
  }

  if (!is.numeric(init_node) || length(init_node) != 1) {
    stop("init_node must be a numeric")
  }
  if (!init_node %in% unique(c(graph$v1, graph$v2))) {
    stop("init_node dont exsit in graphic")
  }

  nodes <- unique(c(graph$v1, graph$v2))
  dist <- setNames(rep(Inf, length(nodes)), nodes)
  dist[as.character(init_node)] <- 0

  visited <- setNames(rep(FALSE, length(nodes)), nodes)
  while (any(!visited)) {
    current_node <- names(which.min(dist[!visited]))
    visited[current_node] <- TRUE
    neighbors <- graph[graph$v1 == as.numeric(current_node), ]
    for (i in 1:nrow(neighbors)) {
      neighbor <- as.character(neighbors$v2[i])
      new_dist <- dist[current_node] + neighbors$w[i]

      if (new_dist < dist[neighbor]) {
        dist[neighbor] <- new_dist
      }
    }
  }
  return(as.vector(dist))
}
