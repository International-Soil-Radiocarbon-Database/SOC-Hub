## Clear all
rm(list=ls(all=TRUE))

#using packman to load/install needed packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(plyr)

#bring in CSV data from USGS PowellCenter
usgs <- read.csv("c:/Users/Jon Wells/OneDrive/Comps/USGSPowellCenter/USGSPowell_database.csv")

#subset by lat long to bound Hawaii
usgs <- usgs[(usgs$lat > 16 & usgs$lat < 25),]
usgs <- usgs[(usgs$long > -165 & usgs$long < -150),]

#use ddply to simplify to columns of interest
usgs_subset <- ddply(usgs,.(X,dataset_name,lat,long,veg_note_profile,c_tot,n_tot, fe_dith, fe_ox, fe_py, 
                            al_dith, al_ox, al_py, cat_exch, ph,ph_h2o,ph_cacl),nrow)
usgs_subset <- usgs_subset[,-18]

#you could also subset by column numbers
usgs_subset2 <- usgs[,c(1:35)]

#importantly, each metric will have to be checked for repeat values from each study
usgs_c <- ddply(usgs,.(dataset_name,c_tot), nrow)
(usgs_c <- usgs_c[(!is.na(usgs_c$c_tot)),])
str(usgs_c)
summary(usgs_c)

write.csv(usgs_subset, file="C:/Users/Jon Wells/OneDrive/Comps/USGSPowellCenter/Hawaii_subset.csv")
