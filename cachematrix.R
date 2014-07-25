## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this can create a invertible matrix
## > c=rbind(c(1, -1/4), c(-1/4, 1))  
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(imatrix) m <<- imatrix
    getsolve <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getsolve()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)

    ## Return a matrix that is the inverse of 'x'
    m
}
