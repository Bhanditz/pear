.First.lib <- function (lib, pkg)
{
  #library.dynam("pear", pkg, lib)
  if (!require (ts, quietly=TRUE))
    stop ("Package ts is needed. Stopping")
}
  
