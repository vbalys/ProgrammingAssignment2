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


## Function calculates inverse for a "cached matrix" created with function 
## `makeCacheMatrix`. 
## First, it checks if inverse is already calculated and cached. If so, it is 
## returned. Otherwise, it calculates the inverse and stores it in cache via 
## `setinverse` function.

cacheSolve <- function(x, ...) {
    inverse <- x$getinverse()
    if (!is.null(inverse)) {
        message("getting cached inverse")
        return(inverse)
    }
    data <- x$get()
    inverse <- solve(data, ...)
    x$setinverse(inverse)
    inverse
}