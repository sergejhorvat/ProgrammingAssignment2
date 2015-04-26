## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(y = matrix()) {
        
        x <- y
        i <- NULL
        
        ## Set matrix function
        set <- function(y) {
                x <<- y
        }
        
        ## Get Matrix function
        get <- function(){
                x
        }
        ## Get inerse matrix
        getInverse <- function(y){
                i
        }
        ## Seet iverse matrix
        setInverse <- function(y){
                i <<- y
        }
        
        #List functions
        list(set = set , get = get, getInverse =getInverse, )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        # is  inverse already calculated?
        c <- x$getInverse()
        if(!is.null(c)) {
                message ("cached inverse matrix is:")
                return(c)
        }
        nc <- x$get()
        c <- solve(nc)
        x$setInverse(c)
        c
        
}
