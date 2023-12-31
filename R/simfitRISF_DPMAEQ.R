simfitRISF_DPMAEQ <- function(sim = 10, N = 500, seed = 100, increment = 0.7, beta = c(5, 1.5, 2, 1, 2),
                            tau = c(0.5, 0.5, -0.2, 0.2, 0.05),
                            gamma1 = c(1, 0.5, 0.5),
                            alpha1 = 1,
                            vee1 = 0.5,
                            lambda1 = 0.05,
                            CL = 4,
                            CU = 8,
                            covbw = matrix(c(0.5, 0.25, 0.25, 0.5), nrow = 2, ncol = 2),
                            maxiter = 1000, quadpoint = 10, 
                            landmark.time = 2, horizon.time = seq(3, 6, by = 1), n.cv = 3,
                            method = "GH", quintile.width = 0.25, ncores = 10) {
  
  
  ParaMatrixRaw <- parallel::mclapply(1:sim, bootsfitRISF_MAEQ,
                                      seed = seed, N = N, increment = increment, 
                                      beta = beta, tau = tau, 
                                      gamma1 = gamma1,
                                      alpha1 = alpha1,
                                      vee1 = vee1,
                                      lambda1 = lambda1,
                                      CL = CL, CU = CU, covbw = covbw, 
                                      quadpoint = quadpoint, maxiter = maxiter, 
                                      n.cv = n.cv, landmark.time = landmark.time, 
                                      horizon.time = horizon.time, method = method, 
                                      quintile.width = quintile.width, mc.cores = ncores)
  
  return(ParaMatrixRaw)
  
}