## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Function to create a matrix object which will cache its Inverse
makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y){
     x <<- y
    inverse <<- NULL
  }
   get <- function() x
   setInverse <- function(inverseMatrix) inverse <<- inverseMatrix
   getInverse <- function() inverse
   list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse  
}

