## it is good to cache results when running time consuming computations. These 
## these funrtions compute and cache the inverse of a matrix

## makes an object that caches its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv=NULL
  set= function(y){
    x<<- y
    inv<<- NULL
  }
  get= function() x
  setinv= function(inverse) inv<<- inverse
  getinv=function() inv
  list(set= set, get= get, setinv= setinv, getinv= getinv)
  
    } 





## calculates the inverse of the matirx from the makecachematrix function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv= x$getinv()
  if(!is.null (inv)) {
    return(inv)
  }
  mat.data= x$get()
  inv= solve(mat.data, ...)
  
  x$setinv(inv)
  return(inv)
}
