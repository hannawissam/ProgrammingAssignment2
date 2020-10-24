## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#
#The below function takes a matrix and then
# it calculate the inverse and assign it to the variable m#
#
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  #calculate the inverse function and assign it to the m variable defined in the parent function
  setinverse <- function(inverse) m <<- inverse
  #return the m variable defined in the parent function which contains the inversed matrix
  getinverse <- function() m
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  # check if the variable m is null then return the cached variable
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
