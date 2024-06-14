#' R Library Summary
#'
#' Provides a brief summary of the package libraries on your machine. This is
#' Jenny!
#'
#' @param sizes Logical: do you want to know the size occupied by the packages in your library?
#'
#' @return A data.frame containing the count of packages in each of the user's
#'   libraries
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function(sizes = FALSE) {
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if (sizes) {
    pkg_df$lib_size <- map_dbl(
      pkg_df$Library,
      ~ sum(fs::file_size(fs::dir_ls(.x, recurse = TRUE)))
    )
  }
  pkg_df
}
