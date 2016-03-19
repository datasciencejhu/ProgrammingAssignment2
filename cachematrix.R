## This R script has two function makeCacheMatrix() and cacheSolve()
## One creates a matrix and the other retrieves an inverse of the matrix from cache

## Creates a special "matrix" object that can cache its inverse. Matrix supplied is always invertible
makeCacheMatrix <- function(x = matrix()) {
  
  inverse <- NULL
  set <- function(a) {
    x <<- a
    inverse <- NULL
  }
  
  get <- function() x
  
  setInverse <- function(inv) inverse <- inv
  
  getInverse <- function() inverse
  
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)

}


## Computes the inverse of the special "matrix" returned by makeCacheMatrix()
##If the inverse has already been calculated (and the matrix has not changed), then it retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
  
  inverse <- x$getInverse()
  if(!is.null(inverse)) {
    message("Getting cached data...")
    return(inverse)
  }
  matrixData <- x$get()
  inverse <- solve(matrixData)
  x$setInverse(inverse)
  inverse
}
