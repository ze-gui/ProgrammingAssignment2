## Put comments here that give an overall description of what your
## functions do

## Here is a adapted version of the function makeVector to 
## 1- set the value of the matrix,
## 2- get the value of the matrix
## 3- set the value of the inverse
## 4- get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setinverse <- function(solve) m <<-solve
  getinverse <- function() m
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Here the function checks if the inverse has already been calculated and if so it gets its value. If not, it calculates the inverse and sets the inverse in the cache.

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
          messagex("getting cached data")
          return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse
        m
}
