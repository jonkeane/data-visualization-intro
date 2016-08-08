library(ggplot2)
load("d.Rda")
d <- d[d$words<10000,] #remove written documents (only want to look at speeches)

## ggplot2 works in layers:
## DATA layer: identify data and mapping (often x, y)
## GEOM layer: specify type of plot (e.g. geom_point(), geom_histogram()...)
## ... can add more data/ geom layers
## aes = aesthetics: defines mappings to various parts of the plot. 


## example data: bunch of word counts / summaries from state of union addresses

head(d)


## let's try and plot total number of words in speech

p <- ggplot(d, aes(x = year, y = words)) 
p

# add some points

p <- ggplot(d, aes(year, words)) + 
      geom_point()
p

# maybe we want different shaped points based on party
p <- ggplot(d, aes(year, words)) + 
  geom_point(aes(shape = party))
p

# no, color the points

p <- ggplot(d, aes(year, words)) + 
  geom_point(aes(color= party))
p

# specify custom colors

p <- ggplot(d, aes(year, words)) + 
  geom_point(aes(color= party)) + 
  scale_color_manual(name = "Party", 
                     values = c("Democrat" = 'blue', 
                                "Republican" = 'red'))
p

# add a title and fix the axis labels
p <- ggplot(d, aes(year, words)) + 
  geom_point(aes(color= party)) + 
  scale_color_manual(name = "Party", values = c("Democrat" = 'blue', "Republican" = 'red'))+
  ggtitle("Length of SoU address")+
  xlab("Year")+
  ylab("Number of words")
p

# get rid of grey background if you don't like it
p <- ggplot(d, aes(year, words)) + 
  geom_point(aes(color= party)) + 
  scale_color_manual(name = "Party", values = c("Democrat" = 'blue', "Republican" = 'red'))+
  ggtitle("Length of SoU address")+
  xlab("Year")+
  ylab("Number of words")+
  theme_bw()
p


# can also change other aspects of the points based on data

p <- ggplot(d, aes(year, words)) + 
  geom_point(aes(color= party, size = sentences)) + 
  scale_color_manual(name = "Party", values = c("Democrat" = 'blue', "Republican" = 'red'))+
  ggtitle("Length of SoU address")+
  xlab("Year")+
  ylab("Number of words")+
  theme_bw()+
  labs(size = "Number of sentences")
p

