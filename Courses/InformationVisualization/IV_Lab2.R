#1. SCATTER PLOT
#Basic Scatter Plot
library(plotly)
fig <- plot_ly(data = iris, x=~Sepal.Length, y=~Petal.Length)
fig

#Styled scatter plot
library(plotly)
fig <- plot_ly(data=iris, x=~Sepal.Length, y=~Petal.Length,
               marker=list(size=10,
                           color='rgba(255,182,193,9',
                           line=list(color='rgba(152,0,0,.8',
                                     width=2)))
fig <- fig %>% layout(title='Styled scatter',
                      yaxis=list(zeroline=FALSE),
                      xaxis=list(zeroline=FALSE))
fig

#Plotting Markers and lines
library(plotly)
trace_0 <- rnorm(100, mean=5)
trace_1 <- rnorm(100, mean=0)
trace_2 <- rnorm(100, mean=-5)
x <- c(1:100)

data <- data.frame(x, trace_0, trace_1, trace_2)

fig <- plot_ly(data, x=~x)
fig <- fig %>% add_trace(y = ~trace_0, name='trace 0', mode='lines')
fig <- fig %>% add_trace(y = ~trace_1, name='trace 1', mode='lines+markers')
fig <- fig %>% add_trace(y = ~trace_2, name='trace 2', mode='markers')

fig

#2. LINE PLOT
#Basic line plot
library(plotly)
x <- c(1:100)
random_y <- rnorm(100, mean=0)
data <- data.frame(x, random_y)

fig <- plot_ly(data, x=~x, y=random_y, type='scatter', mode='lines')

fig

#Line plots mode
library(plotly)
trace_0 <- rnorm(100, mean=5)
trace_1 <- rnorm(100, mean=0)
trace_2 <- rnorm(100, mean=-5)
x <- c(1:100)

data <- data.frame(x, trace_0, trace_1, trace_2)

fig <- plot_ly(data, x=~x, y=~trace_0, name='trace 0', type='scatter', mode='lines')
fig <- fig %>% add_trace(y = ~trace_1, name='trace 1', mode='lines+markers')
fig <- fig %>% add_trace(y = ~trace_2, name='trace 2', mode='markers')

fig

#3. BAR CHART
#Basic Bar Chart
library(plotly)

fig <- plot_ly(
  x = c('giraffes', 'orangutans', 'monkeys'),
  y = c(20, 14, 23),
  name = 'SF Zoo',
  type = 'bar'
)

fig

#Grouped bar chart
library(plotly)

Animals <- c('giraffes', 'orangutans', 'monkeys')
SF_Zoo <- c(20, 14, 23)
LA_Zoo <- c(12, 18, 29)
data <- data.frame(Animals, SF_Zoo, LA_Zoo)

fig <- plot_ly(data, x=~Animals, y=~SF_Zoo, type='bar', name='SF Zoo')
fig <- fig %>% add_trace(y=~LA_Zoo, name='LA Zoo')
fig <- fig %>% layout(yaxis=list(title='Count'), barmode='group')

fig

#4. STACKED BAR CHART
#Basic stacked bar chart
library(plotly)
Animals <- c('giraffes', 'orangutans', 'monkeys')
SF_Zoo <- c(20, 14, 23)
LA_Zoo <- c(12, 18, 29)
data <- data.frame(Animals, SF_Zoo, LA_Zoo)

fig <- plot_ly(data, x=~Animals, y=~SF_Zoo, type='bar', name='SF Zoo')
fig <- fig %>% add_trace(y=~LA_Zoo, name='LA Zoo')
fig <- fig %>% layout(yaxis=list(title='Count'), barmode='stack')

fig

#Bar chart with Hover Text
library(plotly)
x <- c('Product A', 'Product B', 'Product C')
y <- c(20, 14, 23)
text <- c('27% market share', '24% market share', '19% market share')
data <- data.frame(x, y, text)

fig <- plot_ly(data, x=~x, y=~y, type='bar', text=text,
               marker = list(color = 'rgb(158,202,255)',
                             line = list(color='rgb(8,48,107',
                                         width=1.5)))
fig <- fig %>% layout(title = 'January 2013 Sales Report',
                      xaxis = list(title=''),
                      yaxis = list(title=''))

fig

#Bar chart with direct labels
library(plotly)
x <- c('Product A', 'Product B', 'Product C')
y <- c('27% market share', '24% market share', '19% market share')
data <- data.frame(x,y,text)

fig <- plot_ly(data, x=~x, y=~y, type='bar',
               text = y, textposition='auto',
               marker = list(color='rgb(158,202,225)',
                             line=list(color='rgb(8,48,107)', width=1.5)))

fig <- fig %>% layout(title = 'January 2013 Sales Report',
                      xaxis = list(title=''),
                      yaxis = list(title=''))

fig

#5. PIE CHART
library(plotly)

USPersonalExpenditure <- data.frame('Categorie'=rownames(USPersonalExpenditure), USPersonalExpenditure)
data <- USPersonalExpenditure[,c('Categorie', 'X1960')]

fig <- plot_ly(data, labels = ~Categorie, values = ~X1960, type = 'pie')
fig <- fig%>% layout(title = 'United States Personal Expenditures by Categories in 1960',
                     xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                     yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

fig

#6. DONUT CHART
library(plotly)
library(dplyr)

#Get manufacturer dataset
mtcars$manuf <- sapply(strsplit(rownames(mtcars),''),'[[',1)

df <- mtcars
df <- df %>% group_by(manuf)
df <- df %>% summarize(count=n())
fig <- df %>% plot_ly(labels=~manuf, values=~count)
fig <- fig %>% add_pie(hole=0.6)
fig <- fig %>% layout(title = 'Donut charts using Plotly', showlegend = F,
                      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

fig

#7. BUBBLE CHART
#Basic bubble chart
library(plotly)

data <- read.csv('https://raw.githubusercontent.com/plotly/datasets/master/school_earnings.csv')

fig <- plot_ly(data, x=~Women, y=~Men, text=~School, type='scatter', mode='markers',
               marker=list(size=~Gap, opacity=0.5))
fig <- fig %>% layout(title='Gender Gap in Earnings per University',
                      xaxis = list(showgrid=FALSE),
                      yaxis = list(showgrid=FALSE))

fig

#Mapping a color variable (Categorical)
library(plotly)
data <- read.csv('https://raw.githubusercontent.com/plotly/datasets/master/school_earnings.csv')

data$State <- as.factor(c('Massachusetts', 'California', 'Massachusetts', 'Pennsylvania', 'New Jersey', 'Illinois', 'Washington DC',
                          'Massachusetts', 'Connecticut', 'New York', 'North Carolina', 'New Hampshire', 'New York', 'Indiana',
                          'New York', 'Michigan', 'Rhode Island', 'California', 'Georgia', 'California', 'California'))

fig <- plot_ly(data, x=~Women, y=~Men, text=~School, type='scatter', mode='markers', size=~Gap,
               color=~State, colors='Paired',
               marker=list(opacity=0.5, sizemode='diameter'))
fig <- fig %>% layout(title = 'Gender Gap in Earnings per University',
                      xaxis = list(showgrid=F),
                      yaxis = list(showgrid=F),
                      showlegend=F)

fig

#8. TREEMAP
library(plotly)

fig <- plot_ly(
  type = 'treemap',
  labels=c('Eve','Cain','Seth','Enos','Noam','Abel','Awan','Enoch','Azura'),
  parents=c('','Eve','Eve','Seth','Seth','Eve','Eve','Awan','Eve')
)
fig

#9. FILLED AREA PLOT
#Basic filled area plot
library(plotly)
density <- density(diamonds$carat)

fig <- plot_ly(x=~density$x, y=~density$y, type='scatter', mode='lines', fill='tozeroy')
fig <- fig %>% layout(xaxis=list(title='Carat'),
                      yaxis=list(title='Density'))
fig

#Filled area plot with multiple traces
library(plotly)
diamonds1 <- diamonds[which(diamonds$cut=='Fair'),]
density1 <- density(diamonds1$carat)

diamonds2 <- diamonds[which(diamonds$cut=='Ideal'),]
density2 <- density(diamonds2$carat)

fig <- plot_ly(x=~density1$x, y=density1$y, type='scatter', mode='lines', name='Fair cut', fill='tozeroy')
fig <- fig %>% add_trace(x=~density2$x, y=~density2$y, name='Ideal Cut', fill='tozeroy')
fig <- fig %>% layout(xaxis=list(title='Carat'),
                      yaxis=list(title='Density'))

fig

#10. HISTOGRAM
#Basic
library(plotly)
fig <- plot_ly(x=~rnorm(50), type='histogram')
fig

#Normalized histogram
library(plotly)
fig <- plot_ly(x=~rnorm(50),
               type='histogram',
               histnorm='probability')
fig

#11. BOX PLOT
library(plotly)
fig <- plot_ly(y=~rnorm(50), type='box')
fig <- fig %>% add_trace(y=~rnorm(50,1))

fig

#12. HEATMAP
#Basic
library(plotly)
fig <- plot_ly(z=volcano, type='heatmap')
fig

#Categorical axes
m <- matrix(rnorm(9), nrow=3, ncol=3)
fig  <- plot_ly(
  x=c('a','b','c'),
  y=c('d','e','f'),
  z=m, type='heatmap'
)
fig

#13. RADAR CHARTS
library(plotly)
fig <- plot_ly(
  type = 'scatterpolar',
  r = c(39,28,8,7,28,39),
  theta = c('A','B','C','D','E','A'),
  fill = 'toself'
)
fig <- fig %>% layout(polar=list(radialaxis=list(visible=T, range=c(0,50)),
                                 showlegend=F)
)
fig

#14. WATERFALL CHART
library(plotly)

x=list('Sales','Consulting','Net Revenue',' Purchases','Other expenses','Profit before tax')
measure=c('relative','relative','total','relative','relative','total')
text=c('+60','+80','','-40','-20','Total')
y=c(60,80,0,-40,-20,0)
data = data.frame(x=factor(x,levels=x),measure,text,y)

fig <- plot_ly(
  data, name='20', type='waterfall', measure=~measure,
  x=~x, textposition='outside',y=~y, text=~text,
  connector=list(line=list(color='rgb(63,63,63)'))
)
fig <- fig %>%
  layout(title='Profit and loss statement 2018',
         xaxis = list(title=''),
         yaxis = list(title=''),
         autosize = T,
         showlegend= F)
fig

#15. FUNNEL PLOT
library(plotly)

fig <- plot_ly()
fig <- fig %>%
  add_trace(
    type = 'funnel',
    y = c('Website visit','Downloads','Potential customers','Requested price','Invoice sent'),
    x = c(39,27.4,20.6,11,2)
  )
fig<- fig %>%
  layout(yaxis=list(categoryarray = c('Website visit','Downloads','Potential customers','Requested price','Invoice sent'))
         )

fig

#16. SCATTER ON MAP
library(plotly)
df <- read.csv('https://raw.githubusercontent.com/plotly/datasets/master/2011_february_us_airport_traffic.csv')

#geo styling
g <- list(
  scope = 'usa',
  projection = list(type='albers usa'),
  showland= T,
  landcolor = toRGB('gray95'),
  subunitcolor = toRGB('gray85'),
  countrycolor = toRGB('gray85'),
  countrywidth = 0.5,
  subunitwidth = 0.5
)

fig <- plot_geo(df, lat = ~lat, lon = ~long)
fig <-  fig %>% add_markers(
  text = ~paste(airport,city,state,paste('Arrivals', cnt), sep='<br />'),
  color = ~cnt, symbol = I('square'), size = I(8), hoverinfo = 'text'
)

fig <- fig %>% colorbar(title = 'Incoming flight<br />February 2011')
fig <- fig %>% layout(
  title = 'Most trafficked US airport<br />(Hover for airport)', geo = g
)

fig
