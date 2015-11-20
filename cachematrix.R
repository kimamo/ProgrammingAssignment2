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
  
  setInvert <- function(inverse) {
    inverted <<- inverse
  }
  getInverted <- function() {
    inverted
  }
  
  list(
    set = set, get = get, setInvert = setInvert, getInverted = getInverted
  )
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
}
