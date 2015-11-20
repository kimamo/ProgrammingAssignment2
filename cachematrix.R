## Programming Assignment 2 Week 3
## Date: November 20th 2015
## Problem: Matrix inversion is normally a costly computation and could benefit
## from caching its inverse, rather than compute it repeatedly.
## Objective: Design and develop functions that can cache the inverse if a matrix:



## creates an special object of class = "matrix" that will cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  inverted <- NULL
  
  set <- function(y) {
    x <<- y
    inverted <<- NULL
  }
  
  get <- function() {
    x
  }
  
  setInverted <- function(inverse) {
    inverted <<- inverse
  }
  getInverted <- function() {
    inverted
  }
  
  list(
    set = set, get = get, setInverted = setInverted, getInverted = getInverted
  )
  
}


## Function will inverse the special matrix created in function above. If inverse
## allready calculated then its returned as inverse from the cache
##

cacheSolve <- function(x, ...) {
  
  inverted <- x$getInverted()
  
  if (!is.null(inverted)) {
    message("Getting Cached Data...")
    return(inverted)
  }
  
  data <- x$get()
  inverted <- solve(data, ...)
  x$setInverted(inverted)
  
  ## Return a matrix that is the inverse of 'x'
  inverted
}
