## Put comments here that give an overall description of what your
## functions do
  ##This function can cache the inverse of a matrix rather than compute it repeatedly. 
## Write a short comment describing this function
   ##The function,makeCacheMatrix creates a special "matrix",which can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  s<-NULL
  set<-function(y){
  x<<-y
  s<<-NULL
  }
  get<-function()x
  setsolve<-function(solve)s<<-solve
  getsolve<-function()s
  list(set=set,get=get,
       setsolve=setsolve,
       getsolve=getsolve)
}

## Write a short comment describing this function
   ##The function,cacheSolve computes the special "matrix" returned by makeCacheMatrix. The cachesolve retrieve the inverse from the cache, if the inverse has already been calculated
cacheSolve <- function(x, ...) {
        s<-x$getsolve()
        if(!is.NULL(s)){
        message("getting cached data")
        return(s)
        }
        data<-x$get()
        s<-solve(data,...)
        x$setsolve(s)
        s
}## Return a matrix that is the inverse of 'x'
}
