library(soilcarbon)
shiny::runApp(system.file('shiny', package='soilcarbon'))






# Install package
library(timevis)

# Direct to viz
timevis(data = data.frame(
  start   = c("2001-01-01","2015-01-10", "2012-01-11",
              "1978-01-20", "1998-01-1","2010-01-01", "1976-01-10"),
  end     = c(NA, NA, NA, NA, NA, NA, NA),
  content = c("GAP Land Cover, <a href=https://gapanalysis.usgs.gov/>USGS</a>",
              "Agricultural Land Use Baseline, <a href=http://hdoa.hawaii.gov/salub/ class=bar>HDOA</a>", 
              "Food Self-Sufficiency Baseline, <a href=http://records.co.hawaii.hi.us/weblink/1/doc/73723/Electronic.aspx>Hawaii County</a>",
              "Agricultural Land Use Maps (ALUM), <a href= http://files.hawaii.gov/dbedt/op/gis/data/alum.pdf>HDOA</a>", 
              "Land Use on the Island of Oahu, <a href =https://pubs.er.usgs.gov/publication/wri20024301>USGS</a>", 
              "Maui Land Use, <a href =https://water.usgs.gov/GIS/metadata/usgswrd/XML/maui_land_use_circa_2010.xml>USGS</a>", 
              "Land Use Land Cover, <a href=http://geoportal.hawaii.gov/datasets/land-use-land-cover-lulc>GIRAS</a>"),
  group = c(1, 1, 2, 1, 6, 3, 1)),
  groups = data.frame(id = 1:7, content = c("Statewide", "Hawaii", "Maui", "Lanai","Molokai", "Oahu", "Kauai"))
)


