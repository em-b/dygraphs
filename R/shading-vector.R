
dyShading_vectorized <- function(dygraph, from, to, color = "#EFEFEF", axis = "x") {
  
  
  # create shading
  shading <- list()
  
  for(i in 1:length(from)){
    shading$from <- ifelse(axis == "x" && dygraph$x$format == "date",
                           asISO8601Time(from[i]), from[i])
    shading$to <- ifelse(axis == "x" && dygraph$x$format == "date",
                         asISO8601Time(to[i]), to[i])
    shading$color <- color
    shading$axis <- axis
    
    # add it to list of shadings
    dygraph$x$shadings[[length(dygraph$x$shadings) + 1]] <- shading
    
    
    
  }
  
  # return modified dygraph
  dygraph
}