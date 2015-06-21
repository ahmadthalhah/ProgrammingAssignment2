## Put comments here that give an overall description of what your
## functions do

## the following is a pair of functions that cache and
## compute the inverse of a matrix

## Write a short comment describing this function

## Below is a fuction to create makeCacheMatrix: 
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  inverse <-NULL
  set <- function(y) {
    x <<- y;
    inverse <<- NULL
  }
  get <- function() return (x);
  setinv <- function(inv)inverse <<- inv;
  getinv <- function() return(inverse);
  return(list(set = set, get=get, setinv=setinv, getinv=getinv))

}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above.
cacheSolve <- function(x, ...) {
  inverse <- x$getinv()
  if (!is.null(inverse)) {
    message("getting cache data")
    return(inverse)
  }
  data  <- x$get()
  inverse <-solve(data, ...)
  x$setinv(inverse)
  return(inverse)
        ## Return a matrix that is the inverse of 'x'
}
