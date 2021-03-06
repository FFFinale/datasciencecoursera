## Put comments here that give an overall description of what your
## functions do

## For getting and setting the value of the the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-funtion() x
  setinv<-function(inverse) inv<<-inverse
  getinv<-function() inv
  list(set=set,get=get,
       setinv=setinv,getinv=getinv)

}


## To calculate inverse of matrix

cacheSolve <- function(x, ...) {
  inv<-x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data,...)
  x$setinv(inv)
  inv
      
}
