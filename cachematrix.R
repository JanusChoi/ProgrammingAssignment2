## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
        mt <- NULL
        
        set <- function(y) {
                x <<- y
                mt <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) mt <<- solve
        getinverse <- function() mt
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mt <- x$getinverse()
        if(!is.null(mt)) {
                message("getting cached data")
                return(mt)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
