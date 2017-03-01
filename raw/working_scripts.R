# determine where we are...
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# build parse function
parse.book <- function(x) {
  # load the text
  doc <- suppressWarnings(readLines(x))
  # remove page numbers
  doc <- doc[!doc %in% c(1:2000)] 
  
  z<-paste(doc, collapse = ' ')
  
  # identify chapter starts
  chapter_start <- doc %in% paste(c(1:20),'.', sep = '' )
  
  chapters <- character(0)
  ix <- 2
  
  for (i in 2:length(chapter_start)) {
    
    if (chapter_start[i] == TRUE) {
      
      chapters <- c(chapters, paste(doc[ix+1:i-1], collapse = ' ' ))
      ix <- i+1
    }
    
  }; 
  
  chapters <- c(chapters, paste(doc[ix:length(chapter_start)], collapse = ' ' ))
    
}

# save off files
peter_keating <- parse.book('fountainhead-part1.txt')
devtools::use_data(peter_keating, overwrite = TRUE)

ellsworth_m_toohey <- parse.book('fountainhead-part2.txt')
devtools::use_data(ellsworth_m_toohey, overwrite = TRUE)

gail_wynand <- parse.book('fountainhead-part3.txt')
devtools::use_data(gail_wynand, overwrite = TRUE)

howard_roark <- parse.book('fountainhead-part4.txt')
devtools::use_data(howard_roark, overwrite = TRUE)