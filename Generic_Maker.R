
makefunc = function(funcname, type="numeric", ex_text = NULL, 
                    write=FALSE, remove=FALSE){
  x = readLines('Generic_Function.R')
  f_no_dot = gsub("[.]", "_", funcname)
  x = gsub("%ff%", f_no_dot, x)
  x = gsub("%%", funcname, x)
  x = gsub("%type", type, x)
  if (!is.null(ex_text)){
    #     print("doing stuff")
    ex_text[1] = paste0("@examples ", ex_text[1])
    ex_text = paste0("#' ", ex_text)
    ex_text = paste0(ex_text, collapse= "\n")
    x = gsub("%example%", ex_text, x, fixed=TRUE)
  } else {
    x = gsub("%example%", "#'", x)
  }
  if (write) writeLines(text=x, con = paste0("R/", funcname, ".R"))
  if (remove) file.remove(paste0("R/", funcname, ".R"))
  return(TRUE)
}

remove = FALSE
makefunc("vox_offset", write=TRUE, remove=remove)
makefunc("qform_code", write=TRUE, remove=remove)
makefunc("sform_code", write=TRUE, remove=remove)
makefunc("scl_inter", write=TRUE, remove=remove)
makefunc("scl_slope", write=TRUE, remove=remove)
makefunc("slope", write=TRUE, remove=remove)
makefunc("glmin", write=TRUE, remove=remove)
makefunc("glmax", write=TRUE, remove=remove)
makefunc("aux.file", 
         write=TRUE, 
         remove=remove,
         ex_text = c('\\dontrun{', 
                     'url <- "http://nifti.nimh.nih.gov/nifti-1/data/avg152T1_RL_nifti.nii.gz"', 
                     'urlfile <- file.path(system.file("nifti", package="oro.nifti"),', 
                     '                    "mniRL.nii.gz")', 
                     'download.file(url, urlfile, quiet=TRUE)', 
                     '}', 
                     'options("niftiAuditTrail"=FALSE)', 
                     '', 
                     'urlfile <- file.path(system.file("nifti", package="oro.nifti"),', 
                     '                     "mniRL.nii.gz")', 
                     'mniRL <- readNIfTI(urlfile)', 
                     'aux.file(mniRL)', 
                     'aux.file(mniRL) <- "avg152T1_RL_nifti"', 
                     'aux.file(mniRL)'))
makefunc("descrip", write=TRUE, 
         remove=remove, 
         ex_text = c('\\dontrun{',
                     'url <- "http://nifti.nimh.nih.gov/nifti-1/data/avg152T1_LR_nifti.nii.gz"',
                     'urlfile <- file.path(system.file("nifti", package="oro.nifti"),',
                     '                     "mniLR.nii.gz")',
                     'download.file(url, urlfile, quiet=TRUE)',
                     '}',
                     'urlfile <- file.path(system.file("nifti", package="oro.nifti"),',
                     '                     "mniLR.nii.gz")',
                     'mniLR <- readNIfTI(urlfile)',
                     'descrip(mniLR)',
                     '\\dontrun{',
                     'descrip(mniLR) <- paste(descrip(mniLR), version$version.string, sep="; ")',
                     'descrip(mniLR)',
                     '}'))
makefunc("cal.max", write=TRUE, 
         remove=remove, 
         ex_text = c('\\dontrun{',
                     'url <- "http://nifti.nimh.nih.gov/nifti-1/data/avg152T1_LR_nifti.nii.gz"',
                     'urlfile <- file.path(system.file("nifti", package="oro.nifti"),',
                     '                     "mniLR.nii.gz")',
                     'download.file(url, urlfile, quiet=TRUE)',
                     '}',
                     'urlfile <- file.path(system.file("nifti", package="oro.nifti"),',
                     '                     "mniLR.nii.gz")',
                     'mniLR <- readNIfTI(urlfile)',
                     'cal.max(mniLR)'))
makefunc("cal.min", write=TRUE, 
         remove=remove,
         ex_text = c('\\dontrun{',
                     'url <- "http://nifti.nimh.nih.gov/nifti-1/data/avg152T1_LR_nifti.nii.gz"',
                     'urlfile <- file.path(system.file("nifti", package="oro.nifti"),',
                     '                     "mniLR.nii.gz")',
                     'download.file(url, urlfile, quiet=TRUE)',
                     '}',
                     'urlfile <- file.path(system.file("nifti", package="oro.nifti"),',
                     '                     "mniLR.nii.gz")',
                     'mniLR <- readNIfTI(urlfile)',
                     'cal.min(mniLR)'))
makefunc("pixdim", write=TRUE, 
         remove=remove, 
         ex_text=c('\\dontrun{', 
                   'url <- "http://nifti.nimh.nih.gov/nifti-1/data/avg152T1_LR_nifti.nii.gz"',
                   'urlfile <- file.path(system.file("nifti", package="oro.nifti"),', 
                   '"mniLR.nii.gz")',
                   'download.file(url, urlfile, quiet=TRUE)',
                   '}',
                   'urlfile <- file.path(system.file("nifti", package="oro.nifti"),',
                   '                     "mniLR.nii.gz")', 
                   'mniLR <- readNIfTI(urlfile)', 
                   'pixdim(mniLR)'))
