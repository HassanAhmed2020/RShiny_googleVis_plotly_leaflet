
library(googleVis)

df=data.frame(country=c("US", "GB", "BR"), 
              val1=c(10,13,14), 
              val2=c(23,12,32))
Line <- gvisLineChart(df)
plot(Line)


#==============================================================

Vis <- gvisMotionChart(Fruits, "Fruit", "Year", options = list(width = 600, height = 400))
print(Vis, "chart")
plot(Vis)
print(Vis, file = "test.html")

#=============================================================
#to Rub GoogleVis Demo
demo(googleVis)