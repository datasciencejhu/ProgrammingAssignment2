### Assignment: Caching the Inverse of a Matrix

Matrix inversion is usually a costly computation and there may be some
benefit to caching the inverse of a matrix rather than computing it
repeatedly.

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then
`solve(X)` returns its inverse.

### Test Scenario
> x = rbind(c(4, -1), c(-1, 4))
> m = makeCacheMatrix(x)
> m$get()
     [,1] [,2]
[1,]    4   -1
[2,]   -1    4
> cacheSolve(m)
           [,1]       [,2]
[1,] 0.26666667 0.06666667
[2,] 0.06666667 0.26666667
> cacheSolve(m)
           [,1]       [,2]
[1,] 0.26666667 0.06666667
[2,] 0.06666667 0.26666667