Q <- INLA:::inla.rw1(10)
S <- matrix(INLA:::inla.rw1(10), nrow = 10)
S
str(S)
Q
str(Q)

for (N in c(10,1E2,1E3,5E3)){
  Q = INLA:::inla.rw1(N)
  os1 = round(object.size(Q)/1000)
  os2 = round(object.size(matrix(Q, ncol = N))/1000)
  print(paste0("For N = ", N, ", with a sparse matrix we need ", os1 , "kb, whereas with a matrix we need ", os2, "kb."))
}
