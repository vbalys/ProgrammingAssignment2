## Functions below are used to store a matrix and cache its inverse.

## Function creates and returns special object for matrix which is a list 
## containing functions to
##  - set the value of matrix
##  - get the value of matrix
##  - set the value of inverse
##  - get the value of inverse

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    setinverse <- function(inv) inverse <<- inv
    getinverse <- function() inverse
    list(
        set=set,
        get=get,
        setinverse=setinverse,
        getinverse=getinverse
    )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
