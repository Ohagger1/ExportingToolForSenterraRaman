# Import the dpt file
my_data <- read.table("C:path.dpt", header=FALSE, sep="\t")
setwd("C:path")
# Create a list of the column indices to use
col_indices <- seq(2, ncol(my_data))

# Loop over the columns and write out each one to a separate file
for (i in col_indices) {
  # Get the name of the output file
  output_file <- paste0("column_", i, ".txt")
  
  # Select the current column and write it to the output file
  first_col <- my_data[, 1]
  current_col <- my_data[, i]
  write.table(cbind(first_col,current_col), file=output_file, row.names=FALSE, col.names=FALSE, sep="\t")
}
