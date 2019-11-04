# Bringing in column headers as names and using them to set names
### Run as a block of text to time #########
ptm <- proc.time()
header <- read.table("MORTGAGE30US.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("MORTGAGE30US.csv", skip=1, sep=",",
            header=FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME
############################################