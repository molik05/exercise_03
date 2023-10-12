getwd()
setwd("V:/public/MPA-PRG/exercise_03")


IndexOfMin <- function(array, first, last){
  index <- first
  for (k in (first+1):last){
    if (array[k] < array[index]){
      index <- k
    }}
  result <- index
}

print(result1 <- IndexOfMin(c(1,5,3,9,0,1),1,6))

SelectionSort <- function(a, n){
  for (i in 1:(n-1)){
    j <- IndexOfMin(a, i, n)
    a <- replace(a,c(i,j),a[c(j,i)])
    }
  result2 <- a
}

print(result2 <- SelectionSort(c(1,5,3),3))

RecursiveSelectionSort <- function(a, first, last){
  if (first < last){
    index <- IndexOfMin(a, first, last)
    a <- replace(a,c(first,index),a[c(index,first)])
    a <- RecursiveSelectionSort(a, first + 1, last)
  }
  result3 <- a
}

print(result3 <- RecursiveSelectionSort(c(1,5,3,9,0,1),1,6))
