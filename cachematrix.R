## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        t <- NULL
        set <- function(y) {
                x <<- y
               t <<- NULL
        }
        get <- function() x
        setInv <- function(inv)t <<- inv
        getInv <- function()t
        list(set = set,
             get = get,
             setInv = setInv,
             getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         t <- x$getInv()
        if(!is.null(t)){
                message("getting cached data")
                return(t)
        }
        datamatrix <- x$get()
        t <- solve(datamatrix, ...)
        x$setInv(t)
        t

}
