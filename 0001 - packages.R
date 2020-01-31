# This a function the will install all packages that are not already insatlled, and then load them.

install_load_packages <- function(list_packages){
  
  # Loop to iterate the actions below on all the packages listed
  for(i in c(1:length(list_packages))){
   
    #  Check : is the packages already installed
    if(!is.element(list_packages[i],installed.packages()[,1])){
      
      # Install the package that is not already insatlled
      install.packages(list_packages[i],dep = TRUE)
    }
    
    # Then, load the package 
    library(list_packages[i],character.only = TRUE)
  }
} 

# reference
# http://www.salemmarafi.com/code/install-r-package-automatically/
