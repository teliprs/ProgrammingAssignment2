## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## getting and setting values of x. and inverse.  
makeCacheMatrix <- function(x = matrix()) {
  invers_mat <- NULL
  set <- function(y) {
    x <<- y
    invers_mat <<- NULL
  }
  get <- function() x
  setinv <- function(inv) invers_mat <<- inv
  getinv <- function() invers_mat
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## Write a short comment describing this function
## it will return the cached inverse if matrix has not been
## changed since last inverse calculation

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inversmat <- x$get()
  if(!is.null(inversmat)) {
    message("getting cached data")
    return(inversmat)#returning cached inverse
  }
  }
  x$set(x)
  inverse <- solve(inversmat,..)#performing actual inverse
  inverse
}
