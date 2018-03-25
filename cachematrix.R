## Put comments here that give an overall description of what your
## functions do: this function fundamentally makes the same way as the example one, as long as
## we could understand the lexical scoping in the example

## Write a short comment describing this function
## So in this function, it's almost the same except changing some names.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(smatrix) m <<- smatrix
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## Write a short comment describing this function
## So in this function, it's almost the same except changing some names and using solve(), 
## instead of mean()

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmatrix(m)
  m
}
