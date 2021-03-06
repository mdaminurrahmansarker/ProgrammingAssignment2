##The first function, makeCacheMatrix creates a special "matrix"
##Then get the value of the matrix
##Set the value of the inverse function
##Get the value of the inverse function
makeCacheMatrix<- function(x=matrix()){
  inv<- NULL
  set<- function(y){
    x<<- y
    inv<<- NULL
  }
  get<- function(){x}
  setInverse<- function(inverse) { inv<<- inverse}
  getInverse<- function(){inv}
  list(set = set, get= get, setInverse= setInverse, getInverse= getInverse)
}
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
##The cachesolve should retrieve the inverse from the cache after the inverse has been calculated 
cacheSolve<- function(x, ...){
  ## Return a matrix that is the inverse of 'x'
    inv<-x$getInverse()
    if(!is.null(inv)){
    message("getting cahced data")
    return(inv)
}
  
