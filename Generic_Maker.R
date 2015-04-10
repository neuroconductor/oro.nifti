makefunc = function(funcname, type="numeric", ex_text = NULL, 
                    write = FALSE, remove = FALSE) {
  cat("#", funcname, fill = TRUE)
  x = readLines("Generic_Function.R")
  f_no_dot = gsub("[.]", "_", funcname)
  f_dot = gsub("[_]", ".", funcname)
  if (f_no_dot %in% fields$nifti) {
    x = c(x, readLines("Generic_nifti_accessor.R"))
  }
  if (f_no_dot %in% fields$analyze) {
    x = c(x, readLines("Generic_analyze_accessor.R"))
  }
  if ((f_no_dot %in% fields$nifti || f_no_dot %in% fields$analyze) && 
      funcname != "sizeof_hdr") {
    x = c(x, readLines("Generic_replacement.R"))
    if (f_no_dot %in% fields$nifti) {
      x = c(x, readLines("Generic_nifti_replacement.R"))
    }
    if (f_no_dot %in% fields$analyze) {
      x = c(x, readLines("Generic_analyze_replacement.R"))
    }
  } else {
    print("Holy Shit!")
    # x = sub("#' @param value is the value to assign to the \\code\\{%ff%\\} field.", "#'", x)
    x = sub("#' @param value.*", "#'", x)
  }
  if (grepl("[_]|[.]", funcname) && ! f_no_dot %in% fields$S3) {
    x = c(x, readLines("Generic_accessor_.R"))
    if (f_no_dot %in% fields$nifti) {
      x = c(x, readLines("Generic_nifti_accessor_.R"))
    }
    if (f_no_dot %in% fields$analyze) {
      x = c(x, readLines("Generic_analyze_accessor_.R"))
    }
  }
  if (grepl("[_]|[.]", funcname) && ! f_no_dot %in% fields$S3 && f_no_dot != "sizeof_hdr") {
    x = c(x, readLines("Generic_replacement_.R"))
    if (f_no_dot %in% fields$nifti) {
      x = c(x, readLines("Generic_nifti_replacement_.R"))
    }
    if (f_no_dot %in% fields$analyze) {
      x = c(x, readLines("Generic_analyze_replacement_.R"))
    }
  }  
  x = gsub("%ff%", f_no_dot, x)
  x = gsub("%.%", f_dot, x)
  x = gsub("%%", funcname, x)
  x = gsub("%type", type, x)
  if (! is.null(ex_text)) {
    ex_text[1] = paste0("@examples ", ex_text[1])
    ex_text = paste0("#' ", ex_text)
    ex_text = paste0(ex_text, collapse= "\n")
    x = gsub("%example%", ex_text, x, fixed = TRUE)
  } else {
    x = gsub("%example%", "#'", x)
  }
  if (write) {
    writeLines(text = x, con = paste0("R/", f_no_dot, ".R"))
  }
  if (remove) {
    file.remove(paste0("R/", f_no_dot, ".R"))
  }
  invisible()
}

remove <- FALSE

fields <- list(nifti = c("sizeof_hdr", "data_type", "db_name", "extents", 
                         "session_error", "regular", "dim_info", "dim_", 
                         "intent_p1", "intent_p2", "intent_p3", "intent_code",
                         "datatype", "bitpix", "slice_start", "pixdim", 
                         "vox_offset", "scl_slope", "scl_inter", "slice_end", 
                         "slice_code", "xyzt_units", "cal_max", "cal_min",
                         "slice_duration", "toffset", "glmax", "glmin", 
                         "descrip", "aux_file", "qform_code", "sform_code",
                         "quatern_b", "quatern_c", "quatern_d", "qoffset_x",
                         "qoffset_y", "qoffset_z", "srow_x", "srow_y", "srow_z",
                         "intent_name", "magic", "extender"), 
               analyze = c("sizeof_hdr", "data_type", "db_name", "extents", 
                           "session_error", "regular", "hkey_un0", "dim_", 
                           "vox_units", "cal_units", "unused1", "datatype", 
                           "bitpix", "dim_un0", "pixdim", "vox_offset", "funused1", 
                           "funused2", "funused3", "cal_max", "cal_min", "compressed", 
                           "verified", "glmax", "glmin", "descrip", "aux_file", 
                           "orient", "origin", "generated", "scannum", "patient_id",
                           "exp_date", "exp_time", "hist_un0", "views", "vols_added", 
                           "start_field", "field_skip", "omax", "omin", "smax", "smin"),
               S3 = c("hist_un0", "start_field", "dim_", "dim_un0", "dim_info", 
                      "exp_date", "exp_time"))
##
## NIfTI header fields
##
makefunc("data_type", write=TRUE, remove=remove)
makefunc("sizeof_hdr", write=TRUE, remove=remove)
makefunc("db_name", write=TRUE, remove=remove)
makefunc("extents", write=TRUE, remove=remove)
makefunc("session_error", write=TRUE, remove=remove)
makefunc("regular", write=TRUE, remove=remove)
makefunc("dim_info", write=TRUE, remove=remove)
makefunc("dim_", write=TRUE, remove=remove)
makefunc("intent_p1", write=TRUE, remove=remove)
makefunc("intent_p2", write=TRUE, remove=remove)
makefunc("intent_p3", write=TRUE, remove=remove)
makefunc("intent_code", write=TRUE, remove=remove)
makefunc("datatype", write=TRUE, remove=remove)
makefunc("bitpix", write=TRUE, remove=remove)
makefunc("slice_start", write=TRUE, remove=remove)
makefunc("pixdim", write=TRUE, remove=remove, 
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
makefunc("vox_offset", write=TRUE, remove=remove)
makefunc("scl_slope", write=TRUE, remove=remove)
makefunc("scl_inter", write=TRUE, remove=remove)
makefunc("slice_end", write=TRUE, remove=remove)
makefunc("slice_code", write=TRUE, remove=remove)
makefunc("xyzt_units", write=TRUE, remove=remove)
makefunc("cal.max", write=TRUE, remove=remove, 
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
makefunc("cal.min", write=TRUE, remove=remove,
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
makefunc("slice_duration", write=TRUE, remove=remove)
makefunc("toffset", write=TRUE, remove=remove)
makefunc("glmax", write=TRUE, remove=remove)
makefunc("glmin", write=TRUE, remove=remove)
makefunc("descrip", write=TRUE, remove=remove, 
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
makefunc("aux.file", write=TRUE, remove=remove,
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
makefunc("qform_code", write=TRUE, remove=remove)
makefunc("sform_code", write=TRUE, remove=remove)
makefunc("quatern_b", write=TRUE, remove=remove)
makefunc("quatern_c", write=TRUE, remove=remove)
makefunc("quatern_d", write=TRUE, remove=remove)
makefunc("qoffset_x", write=TRUE, remove=remove)
makefunc("qoffset_y", write=TRUE, remove=remove)
makefunc("qoffset_z", write=TRUE, remove=remove)
makefunc("srow_x", write=TRUE, remove=remove)
makefunc("srow_y", write=TRUE, remove=remove)
makefunc("srow_z", write=TRUE, remove=remove)
makefunc("intent_name", write=TRUE, remove=remove)
makefunc("magic", write=TRUE, remove=remove)
makefunc("extender", write=TRUE, remove=remove)
# makefunc("reoriented", write=TRUE, remove=remove)
##
## ANALYZE header fields
##
aim_names = c("hkey_un0", "vox_units", "cal_units", "unused1", "dim_un0", 
              "funused1", "funused2", "funused3", "compressed", "verified", 
              "orient", "origin", "generated", "scannum", "patient_id", 
              "exp_date", "exp_time", "hist_un0", "views", "vols_added", 
              "start_field", "field_skip", "omax", "omin", "smax", "smin")
sapply(aim_names, makefunc, write = TRUE, remove = remove)
