#ZAIDAN MUFADDHAL
#AIU20092029

#INFORMATION VISUALIZATION - LAB EXERCISE

data <- read.csv("R/Trend_Data_Dashboard.csv")
data

#1. BAR CHART
library(ggplot2)

ggplot(data,
       aes(x=Theme,
           y=after_stat(count) / sum(..count..)))+
  geom_bar(fill="#EB455F",
           color="#FCFFE7")+
  labs(x="Platform",
       y="Percent",
       title="Percentage by platform",
       subtitle = "Top Trends on TikTok & YoutubeShorts 2022 summer")+
  scale_y_continuous(labels=scales::percent)

#2. PIE CHART
library(dplyr)
library(scales)
plotdata <- data %>%
  count(Theme) %>%
  arrange(desc(Theme)) %>%
  mutate(prop=round(n*100/sum(n),1),
         lab.ypos=cumsum(prop)-0.5*prop)
plotdata$label<-paste0(plotdata$Theme,"\n",
                       round(plotdata$prop),"%")
ggplot(plotdata,
       aes(x = "",
           y = prop,
           fill = Theme)) +
  geom_bar(width = 1,
           stat = "identity",
           color = "#FCFFE7") +
  geom_text(aes(y=lab.ypos, label=label),
            color='black')+
  coord_polar("y",
              start = 0,
              direction = -1) +
  labs(title="Trending Theme",
       subtitle = "Top Trends on TikTok & YoutubeShorts 2022 summer")+
  theme_void()

#3. Stacked bar chart
ggplot(data,
       aes(x=Theme,
           fill=ï..Platform))+
  geom_bar(position='stack')+
  #scale_y_continuous(breaks = seq(0, 1, .2),
                     #label = percent) +
  scale_fill_brewer(palette = "Set2") +
  labs(y = "Frequency",
       fill = "Platform",
       x = "Trending Theme",
       title = "Frequency by Trending Theme and Platform",
       subtitle = "Top Trends on TikTok & YoutubeShorts 2022 summer") +
  theme_minimal()

#4. SCATTERPLOT
ggplot(data,
       aes(x = Theme,
           y = Video.length.in.S)) +
  geom_point(color="#EB455F",
             size = 2,
             alpha=.8) +
  labs(x = "Trending Theme",
       y = "Video Length in Seconds",
       title = "Trending Theme vs Video Length in Seconds",
       subtitle = "Top Trends on TikTok & YoutubeShorts 2022 summer")

#5. TREEMAP
plotdata<-data %>%
  count(Theme)

ggplot(plotdata,
       aes(fill=Theme,
           area=n,
           label=Theme))+
  geom_treemap()+
  geom_treemap_text(colour='white',
                    place='centre')+
  labs(title='Trending Theme',
       subtitle = "Top Trends on TikTok & YoutubeShorts 2022 summer")+
  theme(legend.position='none')
