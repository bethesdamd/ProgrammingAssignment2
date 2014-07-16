# This code will return a cached value for the inverse of the matrix, or, if no cached
# value exists, it will compute it, cache and return it.

# Here's an example of creating an invertible matrix:
# m <- rbind(c(1,2), c(2,1))

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}