
library(plotly)

plot_ly(mtcars, x = ~wt, y = ~mpg, mode = "markers")


plot_ly(mtcars, x = ~wt, y = ~mpg, mode = "markers", color = ~as.factor(cyl))


plot_ly(mtcars, x = ~wt, y = ~mpg, mode = "markers", color = ~disp)

plot_ly(mtcars, x = ~wt, y = ~mpg, mode = "markers", 
        color = ~as.factor(cyl), size = ~hp)


#=========================================================
#Line time series graphs
data("airmiles")

str(airmiles)
class(airmiles)
time(airmiles)

plot_ly(x = ~time(airmiles), y = ~airmiles)



