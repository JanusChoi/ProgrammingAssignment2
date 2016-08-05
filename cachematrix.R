## Put comments here that give an overall description of what your
## functions do
## Cache inverse data if it is already calculated

## Write a short comment describing this function
## return four function for get/set the matrix/the inverse of the matrix

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
## Use the value which is already in cache if existed
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
