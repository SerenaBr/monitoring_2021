# R_code_chemical_cycles_pollution.r #

#setwd()

library (raster)

#import the EN image
EN01 <- raster('EN_0001.png')
EN02 <- raster('EN_0002.png')
EN03 <- raster('EN_0003.png')
EN04 <- raster('EN_0004.png')
EN05 <- raster('EN_0005.png')
EN06 <- raster('EN_0006.png')
EN07 <- raster('EN_0007.png')
EN08 <- raster('EN_0008.png')
EN09 <- raster('EN_0009.png')
EN10 <- raster('EN_0010.png')
EN11 <- raster('EN_0011.png')
EN12 <- raster('EN_0012.png')
EN13 <- raster('EN_0013.png')

#Otherwise
#rlist <- list.files(pattern= 'EN')
#rlist
#list_rast=lapply (rlist, raster) #lapply -> apply the raster function to rlist #use also <- oterwise =
# ENstack <- stack (list_rast)

cl <- colorRampPalette (c('red', 'orange', 'yellow'))(100)  #yellow show the NO2

par(mfrow=c(1,2))  
plot (EN01, col=cl) #january
plot (EN13, col=cl) #march

#difference between the images

difno2 <- EN01 - EN13
cldif <- colorRampPalette (c('blue', 'black', 'yellow'))(100)
plot (difno2, col=cldif) #show the area with a big decrease of NO2

# plot all the data images
plot (EN01, col=cl)
plot (EN02, col=cl)
plot (EN03, col=cl)
plot (EN04, col=cl)
plot (EN05, col=cl)
plot (EN06, col=cl)
plot (EN07, col=cl)
plot (EN08, col=cl)
plot (EN09, col=cl)
plot (EN10, col=cl)
plot (EN11, col=cl)
plot (EN12, col=cl)
plot (EN13, col=cl)

#all graph
par(mfrow=c(4,4))
plot (EN01, col=cl)
plot (EN02, col=cl)
plot (EN03, col=cl)
plot (EN04, col=cl)
plot (EN05, col=cl)
plot (EN06, col=cl)
plot (EN07, col=cl)
plot (EN08, col=cl)
plot (EN09, col=cl)
plot (EN10, col=cl)
plot (EN11, col=cl)
plot (EN12, col=cl)
plot (EN13, col=cl)

# stack function-> take a list of data and put them togheter # make a stack
EN <- stack(EN01,EN02,EN03,EN04,EN05,EN06,EN07,EN08,EN09,EN10,EN11,EN12,EN13)
plot (EN, col=cl)

# plot (RGB)
plotRGB (EN, red=EN13, green=EN13, blue=EN01, stretch='lin')
plotRGB (EN, red=EN13, green=EN07, blue=EN01, stretch='lin')

# make a boxplot

boxplot (EN,horizontal=T, axes=T, outline=F, col='red',xlab='NO2 - 8bit', ylab='Period')

