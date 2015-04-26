## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
  #cache a matrix to return inverse
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}

## Write a short comment describing this function
  #return inverse of cached matrix

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


#z<- matrix (1:4,2,2)
#z

#test <- makeCacheMatrix(z)
#test2 <- cacheSolve(test)
#test2
