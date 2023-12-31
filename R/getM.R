GetM <- function(GetEfun, beta, tau, gamma1, gamma2, alpha1, alpha2, vee1, vee2, H01, H02, 
                 Sig, Z, X1, W, Y, X2, survtime, cmprsk, mdata, mdataS) {
  
  if(is.list(GetEfun)) {
    FUNENW <- as.vector(GetEfun$FUNENW)
    FUNBENW <- as.matrix(GetEfun$FUNBENW)
    FUNBS <- as.matrix(GetEfun$FUNBS)
    FUNBW <- as.matrix(GetEfun$FUNBW)
    FUNWS <- as.vector(GetEfun$FUNWS)
    FUNBSENW <- as.matrix(GetEfun$FUNBSENW) 
    FUNEC <- as.matrix(GetEfun$FUNEC)
    FUNBEC <- as.matrix(GetEfun$FUNBEC)
    FUNBSEC <- as.matrix(GetEfun$FUNBSEC)
    FUNWEC <- as.matrix(GetEfun$FUNWEC)
    FUNWSEC <- as.matrix(GetEfun$FUNWSEC)
    FUNB <- as.matrix(GetEfun$FUNB)
    FUNW <- as.vector(GetEfun$FUNW)
    

    getMpara <- getMC(beta, tau, gamma1, gamma2, alpha1, alpha2, vee1, vee2, H01, 
                      H02, Sig, Z, X1, W, Y, X2, survtime, cmprsk, mdata, mdataS,
                      FUNENW, FUNBENW, FUNBS, FUNBW, FUNWS, FUNBSENW, FUNEC, FUNBEC,
                      FUNBSEC, FUNWEC, FUNWSEC,FUNB, FUNW)
      
    return(getMpara)
  
  } else {
    return(0);
  }
}