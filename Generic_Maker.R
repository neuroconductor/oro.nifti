
makefunc = function(funcname, type="numeric", write=FALSE, remove=FALSE){
  x = readLines('Generic_Function.R')
  f_no_dot = gsub("[.]", "_", funcname)
  x = gsub("%ff%", f_no_dot, x)
  x = gsub("%%", funcname, x)
  x = gsub("%type", type, x)
  if (write) writeLines(text=x, con = paste0("R/", funcname, ".R"))
  if (remove) file.remove(paste0("R/", funcname, ".R"))
  return(TRUE)
}

remove = TRUE
makefunc("vox_offset", write=TRUE, remove=remove)
makefunc("qform_code", write=TRUE, remove=remove)
makefunc("sform_code", write=TRUE, remove=remove)
makefunc("scl_inter", write=TRUE, remove=remove)
makefunc("scl_slope", write=TRUE, remove=remove)
makefunc("slope", write=TRUE, remove=remove)
makefunc("glmin", write=TRUE, remove=remove)
makefunc("glmax", write=TRUE, remove=remove)
makefunc("descrip", write=TRUE, remove=remove)
makefunc("cal.max", write=TRUE, remove=remove)
makefunc("cal.min", write=TRUE, remove=remove)
makefunc("pixdim", write=TRUE, remove=remove)
