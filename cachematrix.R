## Put comments here that give an overall description of what your
## functions do

## its a function that saves temporally an inverse of a matrix
makeCacheMatrix <- function(matriz = matrix()) {

  #creates a propiety to inverse and the regular matrix
  i <- NULL
  normal <- function( matrix ) {
    matriz <<- matrix
    i <<- NULL
  }
  #gets the matrix
  pega <- function() {
    matriz
  }
  #inverts the matrix
  normali <- function(inverse) {
    i <<- inverse
  }
  #save the inverse matrix
  pegai <- function() {
    i
  }
  #creates a list of propriets for function
  list(normal = normal, normali = normali, pega = pega, pegai = pegai)
}


## calculates the inverse of the matrix returned by makeCacheMatrix. If the matrix is already calculated, returns the inverse.

cacheSolve <- function(entrada, ...) {
#returns the inverse of matrix
  final <- entrada$pegai()
  if (!is.null(final)) {
    message("already calculated")
    return(final)
  }
  #gets matriz
  data <- entrada$pega()
  #calculates the inverse using multiplication
  final <- solve(data, ...)
  #inverse matrix and returns
  entrada$normali(final)
  final
}

