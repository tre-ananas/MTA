##### START DATE : 1 OCT 2024
##### AUTHOR : RYAN WOLFF



# LIBRARIES
LoadLibraries <- function() {
  required_packages <- c('vroom',
                         'tidyverse')
  
  for (package in required_packages) { # Install and load packages.
    if(!require(package, character.only = TRUE)) {
      install.packages(package, dependencies = TRUE) # If package isn't installed, install it.
    }
    library(package, character.only = TRUE) # Load the package.
  }
}
LoadLibraries()



# DATA
delivery <- vroom('RemoteAccess/Data/delivery.csv')
speed <- vroom('RemoteAccess/Data/speed.csv')
wait <- vroom('RemoteAccess/Data/wait.csv')



# JOIN