#ZAIDAN MUFADDHAL
#AIU20092029

#INFORMATION VISUALIZATION - LAB1

pkgs <- c("ggplot2", "dplyr","tidyr","mosaicData","carData",
          "VIM","scales","treemapify","gapminder","ggmap","choroplethr",
          "choroplethrMaps","CGPfunctions","ggcorrplot","visreg",
          "gcookbook","forcats","survival","survminer","ggalluvial",
          "ggridges","GGally","superheat","waterfalls","factoextra",
          "networkD3","ggthemes","hrbrthemes","ggpol","ggbeeswarm")
install.packages(pkgs)

#1 BAR CHART
library(ggplot2)
data(Marriage, package = "mosaicData")
#Plot the distribution of race
ggplot(Marriage, aes(x=race))+
  geom_bar()

#plot the distribution of race with modifies colors and labels
library(ggplot2)
ggplot(Marriage, aes(x=race))+
  geom_bar(fill="cornflowerblue",
           color="black")+
  labs(x="Race",
       y="Frequency",
       title="Participants by race")

#plot the distribution as percentages
ggplot(Marriage,
       aes(x=race,
           y=..count.. / sum(..count..)))+
  geom_bar()+
  labs(x="Race",
       y="Percent",
       title="Participants by race")+
  scale_y_continuous(labels=scales::percent)

#calculate number of participants in each race category
library(dplyr)
plotdata <- Marriage %>%
  count(race)
#plot the bars with numeric labels
ggplot(plotdata,
       aes(x=race,
           y=n))+
  geom_bar(stat='identity')+
  geom_text(aes(label=n),
            vjust=-0.5)+
  labs(x='Race',
       y='Frequency',
       title='Participants by race')

library(dplyr)
library(scales)
plotdata <- Marriage %>%
  count(race) %>%
  mutate(pct = n / sum(n),
         pctlabel = paste0(round(pct*100), "%"))
# plot the bars as percentages,
# in decending order with bar labels
ggplot(plotdata,
       aes(x = reorder(race, -pct),
           y = pct)) +
  geom_bar(stat = "identity",
           fill = "indianred3",
           color = "black") +
  geom_text(aes(label = pctlabel),
            vjust = -0.25) +
  scale_y_continuous(labels = percent) +
  labs(x = "Race",
       y = "Percent",
       title = "Participants by race")



#2 PIE CHART

# create a basic ggplot2 pie chart
plotdata <- Marriage %>%
  count(race) %>%
  arrange(desc(race)) %>%
  mutate(prop = round(n * 100 / sum(n), 1),
         lab.ypos = cumsum(prop) - 0.5 *prop)
ggplot(plotdata,
       aes(x = "",
           y = prop,
           fill = race)) +
  geom_bar(width = 1,
           stat = "identity",
           color = "black") +
  coord_polar("y",
              start = 0,
              direction = -1) +
  theme_void()

#create a pie chart with slice labels
plotdata <- Marriage %>%
  count(race) %>%
  arrange(desc(race)) %>%
  mutate(prop=round(n*100/sum(n),1),
         lab.ypos=cumsum(prop)-0.5*prop)
plotdata$label<-paste0(plotdata$race,"\n",
                       round(plotdata$prop),"%")
ggplot(plotdata,
       aes(x="",
           y=prop,
           fill=race))+
  geom_bar(width=1,
           stat='identity',
           color='black')+
  geom_text(aes(y=lab.ypos, label=label),
            color='black')+
  coord_polar('y',
              start=0,
              direction=-1)+
  theme_void()+
  theme(legend.position='FALSE')+
  labs(title='Participants by race')



#3 TREE MAP

library(treemapify)
#create a treemap of marriage officials
plotdata<-Marriage %>%
  count(officialTitle)

ggplot(plotdata,
       aes(fill = officialTitle,
           area = n)) +
  geom_treemap() +
  labs(title = "Marriages by officiate")

#create a treemap with tile labels
ggplot(plotdata,
       aes(fill=officialTitle,
           area=n,
           label=officialTitle))+
  geom_treemap()+
  geom_treemap_text(colour='white',
                     place='centre')+
  labs(title='Marriages by officate')+
  theme(legend.position='none')


#4 HISTOGRAM

library(ggplot2)
#plot the age distribution using a histogram
ggplot(Marriage, aes(x=age))+
  geom_histogram()+
  labs(title='Participants by age',
       x='Age')

#plot the histogram with blue bars and white borders
ggplot(Marriage, aes(x=age))+
  geom_histogram(fill='cornflowerblue',
                 color='white')+
  labs(title='Participants by age',
       x='Age')

#plot the histogram with 20 bins
ggplot(Marriage,aes(x=age))+
  geom_histogram(fill='cornflowerblue',
                 color='white',
                 bins=20)+
  labs(title='Participants by age',
       subtitle='Number of bins = 20',
       x='Age')



#5 STACKED BAR CHART
library(ggplot2)
ggplot(mpg,
       aes(x=class,
            fill=drv))+
  geom_bar(position='stack')



#6 SEGEMENTED BAR CHART
library(ggplot2)
#bar plot, with each bar representing 100%
ggplot(mpg,
       aes(x=class,
           fill=drv))+
  geom_bar(position='Fill')+
  labs(y='Proportion')

#bar plot, with each bar representing 100%
#reordered bars, and better labels and colors
library(scales)
ggplot(mpg,
       aes(x=factor(class,
                    levels=c('2seater','subcompact',
                             'compact','midsize',
                             'minivan','suv','pickup')),
           fill=factor(drv,
                       levels=c('f','r','4'),
                       labels=c('front-wheel',
                                'rear-wheel',
                                '4-wheel'))))+
  geom_bar(position='fill')+
  scale_y_continuous(breaks = seq(0, 1, .2),
                     label = percent) +
  scale_fill_brewer(palette = "Set2") +
  labs(y = "Percent",
       fill = "Drive Train",
       x = "Class",
       title = "Automobile Drive by Class") +
  theme_minimal()

# change the order the levels for the categorical variable "class"
mpg$class = factor(mpg$class,
                   levels = c("2seater", "subcompact", "compact","midsize","minivan", "suv", "pickup"))

library(dplyr)
plotdata <- mpg %>%
  group_by(class, drv) %>%
  summarize(n = n()) %>% 
  mutate(pct = n/sum(n),
         lbl = scales::percent(pct))
plotdata

# create segmented bar chart
# adding labels to each segment
ggplot(plotdata,
       aes(x = factor(class,
                      levels = c("2seater", "subcompact",
                                 "compact", "midsize",
                                 "minivan", "suv", "pickup")),
           y = pct,
           fill = factor(drv,
                         levels = c("f", "r", "4"),
                         labels = c("front-wheel",
                                    "rear-wheel",
                                    "4-wheel")))) +
  geom_bar(stat = "identity",
           position = "fill") +
  scale_y_continuous(breaks = seq(0, 1, .2),
                     label = percent) +
  geom_text(aes(label = lbl),
            size = 3,
            position = position_stack(vjust = 0.5)) +
  scale_fill_brewer(palette = "Set2") +
  labs(y = "Percent",
       fill = "Drive Train",
       x = "Class",
       title = "Automobile Drive by Class") +
  theme_minimal()



#7 SCATTERPLOT
library(ggplot2)
data(Salaries, package='carData')

#simple scatterplot
ggplot(Salaries,
       aes(x=yrs.since.phd,
       y=salary))+
  geom_point()

#enhanced scatterplot
ggplot(Salaries,
       aes(x = yrs.since.phd,
           y = salary)) +
  geom_point(color="cornflowerblue",
             size = 2,
             alpha=.8) +
  scale_y_continuous(label = scales::dollar,
                     limits = c(50000, 250000)) +
  scale_x_continuous(breaks = seq(0, 60, 10),
                     limits=c(0, 60)) +
  labs(x = "Years Since PhD",
       y = "",
       title = "Experience vs. Salary",
       subtitle = "9-month salary for 2008-2009")



#8 LINE PLOT

data(gapminder, package="gapminder")
#Select US cases
library(dplyr)
plotdata <- filter(gapminder,
                   country == "United States")
#Simple line plot
ggplot(plotdata,
       aes(x = year,
           y = lifeExp)) +
  geom_line()

#Line plot with points and improved labeling
ggplot(plotdata,
       aes(x = year,
           y = lifeExp)) +
  geom_line(size = 1.5,
            color = "lightgrey") +
  geom_point(size = 3,
             color = "steelblue") +
  labs(y = "Life Expectancy (years)",
       x = "Year",
       title = "Life expectancy changes over time",
       subtitle = "United States (1952-2007)",
       caption = "Source: http://www.gapminder.org/data/")



#9 BOX PLOT
#plot the distribution of salaries by rank using box plots
ggplot(Salaries,
       aes(x = rank,
           y = salary)) +
  geom_boxplot() +
  labs(title = "Salary distribution by rank")

#plot the distribution of salaries by rank using box plots
ggplot(Salaries, aes(x = rank,
                     y = salary)) +
  geom_boxplot(notch = TRUE,
               fill = "cornflowerblue",
               alpha = .7) +
  labs(title = "Salary distribution by rank")




#10 AREA CHART
#Basic area chart
ggplot(economics, aes(x = date, y = psavert)) +
  geom_area(fill="lightblue", color="black") +
  labs(title = "Personal Savings Rate",
       x = "Date",
       y = "Personal Savings Rate")

#Stacked area chart
data(uspopage, package = "gcookbook")
ggplot(uspopage, aes(x = Year,
                     y = Thousands,
                     fill = AgeGroup)) +
  geom_area() +
  labs(title = "US Population by age",
       x = "Year",
       y = "Population in Thousands")

#stacked area chart 
data(uspopage, package = "gcookbook")
ggplot(uspopage, aes(x = Year,
                     y = Thousands/1000,
                     fill = forcats::fct_rev(AgeGroup))) +
  geom_area(color = "black") +
  labs(title = "US Population by age",
       subtitle = "1900 to 2002",
       caption = "source: U.S. Census Bureau, 2003, HS-3",
       x = "Year",
       y = "Population in Millions",
       fill = "Age Group") +
  scale_fill_brewer(palette = "Set2") +
  theme_minimal()



#11 Correlation plot

data(SaratogaHouses, package="mosaicData")
# select numeric variables
df <- dplyr::select_if(SaratogaHouses, is.numeric)
# calulate the correlations
r <- cor(df, use="complete.obs")
round(r,2)
#libraries
library(ggplot2)
library(ggcorrplot)
ggcorrplot(r)
#plotting
ggcorrplot(r,
           hc.order = TRUE,
           type = "lower",
           lab = TRUE)



#12 BUBBLE CHART

#create a bubble plot
data(mtcars)
library(ggplot2)
ggplot(mtcars,
       aes(x = wt, y = mpg, size = hp)) +
  geom_point()

#create a bubble plot with modifications
ggplot(mtcars,
       aes(x = wt, y = mpg, size = hp)) +
  geom_point(alpha = .5,
             fill="cornflowerblue",
             color="black",
             shape=21) +
  scale_size_continuous(range = c(1, 14)) +
  labs(title = "Auto mileage by weight and horsepower",
       subtitle = "Motor Trend US Magazine (1973-74 models)",
       x = "Weight (1000 lbs)",
       y = "Miles/(US) gallon",
       size = "Gross horsepower")



#13 HEATMAP

data(mtcars)
library(superheat)
superheat(mtcars, scale = TRUE)
# sorted heat map
superheat(mtcars,
          scale = TRUE,
          left.label.text.size=3,
          bottom.label.text.size=3,
          bottom.label.size = .05,
          row.dendrogram = TRUE )

# create heatmap for gapminder data (Asia)
library(tidyr)
library(dplyr)
#load data
data(gapminder, package="gapminder")
#subset Asian countries
asia <- gapminder %>%
  filter(continent == "Asia") %>%
  select(year, country, lifeExp)
#convert to long to wide format
plotdata <- spread(asia, year, lifeExp)
#save country as row names
plotdata <- as.data.frame(plotdata)
row.names(plotdata) <- plotdata$country
plotdata$country <- NULL
#row order
sort.order <- order(plotdata$"2007")
#color scheme
library(RColorBrewer)
colors <- rev(brewer.pal(5, "Blues"))
#create the heat map
superheat(plotdata,
          scale = FALSE,
          left.label.text.size=3,
          bottom.label.text.size=3,
          bottom.label.size = .05,
          heat.pal = colors,
          order.rows = sort.order,
          title = "Life Expectancy in Asia")



#RADAR CHART
install.packages("ggradar")
install.packages("devtools")
devtools::install_github("ricardo-bion/ggradar")

#prepare data
data(msleep, package = "ggplot2")
library(ggradar)
library(scales)
library(dplyr)
plotdata <- msleep %>%
  filter(name %in% c("Cow", "Dog", "Pig")) %>%
  select(name, sleep_total, sleep_rem,
         sleep_cycle, brainwt, bodywt) %>%
  rename(group = name) %>%
  mutate_at(vars(-group),
            funs(rescale))
plotdata
#generate radar chart
ggradar(plotdata,
        grid.label.size = 4,
        axis.label.size = 4,
        group.point.size = 5,
        group.line.width = 1.5,
        legend.text.size= 10) +
  labs(title = "Mammals, size, and sleep")



#WATERFALL CHART
#create company income statement
category <- c("Sales", "Services", "Fixed Costs",
              "Variable Costs", "Taxes")
amount <- c(101000, 52000, -23000, -15000, -10000)
income <- data.frame(category, amount)

#create waterfall chart
library(ggplot2)
library(waterfalls)
waterfall(income)

#create waterfall chart with total column
waterfall(income,
          calc_total=TRUE,
          total_axis_text = "Net",
          total_rect_text_color="black",
          total_rect_color="goldenrod1") +
  scale_y_continuous(label=scales::dollar) +
  labs(title = "West Coast Profit and Loss",
       subtitle = "Year 2017",
       y="",
       x="") +
  theme_minimal()
