## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## I will write function that will utilize chaching for potentially time-consuming computations.
## In this case the calculation of inverse matrix.
## Scoping rules will be used to show how it can manipulate or preserve state inside of an object in R.

##  <<- operator which can be used to assign a value to an object in an environment that is different from the current environment.


## Procedure wil be the fallowing setting getters and setters for matrix and inverse matrix:
## 1. Set value of matrix - x
## 2. Get values of matrix - x 
## 3. Set value of inverse matrix - i
## 4. Get values of inverse matrix - i 

makeCacheMatrix <- function(y = matrix()) {
        
        x <- y
        i <- NULL
        
        ## 1. Set value of matrix - x
        set <- function(y) {
                x <<- y
        }
        
        ## 2. Get values of matrix - x 
        get <- function(){
                x
        }
        
        ## 3. Set value of inverse matrix - i
        getInverse <- function(y){
                i
        }
        
        ## 4. Get values of inverse matrix - i 
        setInverse <- function(y){
                i <<- y
        }
        
        #List functions
        list(set=set , get=get, getInverse=getInverse, setInverse=setInverse )

}


## Write a short comment describing this function
## This function checks if there is inverse matrix of a same matrix source if it 
## exists, uses the cache if not is calculates it and setc the cache and inverse matrix value

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
 
