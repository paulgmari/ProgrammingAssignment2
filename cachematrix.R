## Created to find the inverse of a matrix by Paul G Mari 
## for R Programming - Coursera Course

## Creates a matrix, of which to find the inverse; sets values of the matrix,
## gets matrix values, sets inverse of matrix, and gets those values


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
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


## Calculates inverse if has not yet been calculated above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <-solve(data, ...)
  x$setmatrix(m)
  m
}
