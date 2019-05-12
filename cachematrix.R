## These are the functions for assignment 2

### it is like de make vector function example
### this function creates a special matrix 
### it return a list of functions to set get the matrix and
### set get its inverse
makeCacheMatrix <- function(x = matrix()) {
  
  inversa <- NULL
  set <- function(y) {
    x <<- y
    inversa <<- NULL
  }
  get <- function() x
  setinversa <- function(inver) inversa <<- inver
  getinversa <- function() inversa
  list(set = set, get = get,
       setinversa = setinversa,
       getinversa = getinversa)
  
  
  
}



### This function computes the inverse of the matrix, if it has not 
### been computed before
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inversa <- x$getinversa()
  if(!is.null(inversa)) {
    message("getting cached data")
    return(inversa)
  }
  matriz <- x$get()
  inversa<- solve(matriz)
  x$setinversa(inversa)
  inversa
  
}

