#' {{ cookiecutter.project_short_description }}
#'
#' @docType package
#' @name {{ cookiecutter.repo_name }}
NULL

#
# Write functions only and document them with roxygen-styled comments.
# Example from FraseR package below.
#

#' 
#' @title Find rare splicing events within RNA-seq data
#' @description This function performs a default analysis of RNA-seq data
#'             
#' @param settings A FraseRSetting object with all the information 
#'             how and what to count
#' @param internBPPARAM A BiocParallel param object to configure the 
#'             parallel backend of the internal loop for counting
#'             
#' @return FraseRDataSet 
#' @export
#' @examples
#'   fds <- FraseR(createTestFraseRSettings())
#'   plotSampleResults(fds)
FraseR <- function(settings, internBPPARAM=SerialParam()){
  
  # Check input
  stopifnot(class(settings) == "FraseRSettings")
  stopifnot(is(internBPPARAM, "BiocParallelParam"))
  
  # count data
  fds <- countRNAData(settings, internBPPARAM=internBPPARAM)
  #...
  # return final analysis
  return(fds)
}


