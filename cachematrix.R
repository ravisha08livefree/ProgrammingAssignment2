## makeCacheMatrix will first create a matrix with input variable and cache it in "set".At
##the same time we can get the value of this matrix using $get()
##Initiatilly the $getinverse() will return NULL as the cacheinverse function (to calculate Inverse matrix)
## has yet not been computed


## cacheSolve will first take the input arguments from makeCacheMatrix (the class should be same).
## First it will check if there is already an cached Inverse value in the data. If it is there it will
## send a message-"getting cached data" and will fetch it and display
## If the input vector is changed, then there will be no cached value in getinverse so
## then using $get() ,it will find the input x and calculate its inverse and return it

makeCacheMatrix <- function(x = matrix())
  ##Input square matrix followed by nrow="anything", byrow=TRUE as the arguments
  {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  ##this will set the inverse value in setinverse(if exist in cache, otherwise null)
  getinverse <- function() i
  ## will return NULL at the initiation of new input
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  i <- solve(data, ...)
  ## this will calculate inverse of a sq matrix
  x$setinverse(i)
  i
}
