## Caching the Inverse of a Matrix

## Function creates a special "matrix" object 
## that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {

## initialize i value
     i <- NULL

## Function to set matrix and inverse     
     set <- function(y) {
          x <<- y
          i <<- NULL
     }

## Function to get the matrix
     get <- function() x

## Function to set inverse
     setinverse <- function(inverse) i <<- inverse
## Function to get inverse
     getinverse <- function() i

## Lists the functions
     list(set = set, get = get,
          setinverse = setinverse,
          getinverse = getinverse)
     
}



## Function computes the inverse of the special "matrix" 
## returned by 'makeCacheMatrix'. If the inverse has already 
## been calculated then this function should retrieve 
## the inverse from the cache
cacheSolve <- function(x, ...) {
     
## get the inverse from cahche
     i <- x$getinverse()

     ## if inverse is available then return     
     if(!is.null(i)) {
          message("getting cached data")
          return(i)
     }

## if inverse is not available then calculate and return
     data <- x$get()

## Calculating inverse
     i <- solve(data, ...)

## set inverse in cache
     x$setinverse(i)

## return inverse
     i     
     
}
