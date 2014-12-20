## Put comments here that give an overall description of what your
## functions do

## The function creates a matrix and stores the inverse in a variable
## named "inv", that is outside the environnment

makeCacheMatrix <- function(x = matrix()) {
  ## Computes the inverse of the newly created and stores it
  ## in an external environnment (variable "inv")
  y<-solve(x)
  inv<<-y

}

## Returns the inverse of a matrix, unless it has been computed yet.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  makeCacheMatrix(x)
  y2<-solve(x)
        ## Checks if the inverse has already been calculated
        ## and is still the same result. If not return the solve Result
  if (y2==inv){
    message("getting cached data")
    return(inv)
  }
  else {
    return(y2)
  }
  
}
