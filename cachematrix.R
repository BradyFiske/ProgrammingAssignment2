## makeCacheMatrix() takes a square matrix and returns its inverse
## cacheInverse creates the inverse of the matrix if not already cached in makeCacheMatrix; otherwise, it returns 
## the contents of the cached object

## takes a single argument, class matrix, and returns its inverse in an object available to other functions

makeCacheMatrix <- function(x = matrix()) {
  ## Return a matrix that is the inverse of 'x'
  x_inv <<- solve(x)
  x_inv
 
}


## Takes a single argument, class matrix, and creates its inverse after checking to see if inverse already exists in 
## cached object; if so, returns the previously cached contents of the object

cacheSolve <- function(x) {
       
## checks to see if matrix inverse has already been created
  if(!is.null(x_inv)) {
## if already created, returns previously cached result    
    message("getting cached data")
    return(x_inv)
  }
  else {
 ## otherwise performs matrix inversion and returns result   
    message("performing inversion calculation")
    x_inv <- solve(x)
    return(x_inv)
  }
}
