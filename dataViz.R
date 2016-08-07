library(ggplot2)
library(dplyr)
library(lubridate)
se <- function(x, ...) sqrt(var(x, ...)/length(x))

carrierOrigin <- nycflights13::flights %>% group_by(carrier, origin) %>% summarise()

ggplot(carrierOrigin) + aes(x=carrier, y=origin) + geom_bar(position = "dodge", stat = "identity") + ggtitle("Carriers flying out of NYC airports")
ggsave("slides/images/carrier-origin-bars.png", height = 650/150, width = 800/150, device = "png")

ggplot(carrierOrigin) + aes(x=carrier, y=origin) + geom_point(size = 4)+ ggtitle("Carriers flying out of NYC airports")
ggsave("slides/images/carrier-origin-dots.png", height = 650/150, width = 800/150, device = "png") 


nycflights13::flights %>% group_by(carrier) %>% summarise(arr_delay_mean = mean(arr_delay, na.rm=TRUE), arr_delay_se = se(arr_delay, na.rm=TRUE))  %>% 
  ggplot() + aes(x=carrier, y=arr_delay_mean, ymin=arr_delay_mean-arr_delay_se, ymax=arr_delay_mean+arr_delay_se, group=1) + geom_line() + 
  xlab("carrier (IATA)") +  ylab("arrival delay (min)") + ggtitle("Arrival delays by carrier")
ggsave("slides/images/arr-delay-line.png", height = 650/150, width = 800/150, device = "png")

nycflights13::flights %>% group_by(carrier) %>% summarise(arr_delay_mean = mean(arr_delay, na.rm=TRUE), arr_delay_se = se(arr_delay, na.rm=TRUE))  %>% 
  ggplot() + aes(x=carrier, y=arr_delay_mean, group=1) + geom_line() + geom_ribbon(aes(ymin=arr_delay_mean-arr_delay_se, ymax=arr_delay_mean+arr_delay_se), alpha=0.5) + 
  xlab("carrier (IATA)") +  ylab("arrival delay (min)") + ggtitle("Arrival delays by carrier")
ggsave("slides/images/arr-delay-ribbon.png", height = 650/150, width = 800/150, device = "png")

nycflights13::flights %>% group_by(carrier) %>% summarise(arr_delay_mean = mean(arr_delay, na.rm=TRUE), arr_delay_se = se(arr_delay, na.rm=TRUE))  %>% 
  ggplot() + aes(x=carrier, y=arr_delay_mean) + geom_bar(stat = "identity") + 
  xlab("carrier (IATA)") +  ylab("arrival delay (min)") + ggtitle("Arrival delays by carrier")
ggsave("slides/images/arr-delay-bar.png", height = 650/150, width = 800/150, device = "png")

nycflights13::flights %>% group_by(carrier) %>% summarise(arr_delay_mean = mean(arr_delay, na.rm=TRUE), arr_delay_se = se(arr_delay, na.rm=TRUE))  %>% 
  ggplot() + aes(x=carrier, y=arr_delay_mean, ymin=arr_delay_mean-arr_delay_se, ymax=arr_delay_mean+arr_delay_se) + geom_bar(stat = "identity") +
  geom_errorbar() + 
  xlab("carrier (IATA)") +  ylab("arrival delay (min)") + ggtitle("Arrival delays by carrier")
ggsave("slides/images/arr-delay-bar-error.png", height = 650/150, width = 800/150, device = "png")

nycflights13::flights %>% 
  ggplot() + aes(x=carrier, y=arr_delay) + geom_boxplot() + 
  xlab("carrier (IATA)") +  ylab("arrival delay (min)") + ggtitle("Arrival delays by carrier")
ggsave("slides/images/arr-delay-boxplot.png", height = 650/150, width = 800/150, device = "png")

nycflights13::flights %>% 
  ggplot() + aes(x=carrier, y=arr_delay) + geom_violin() + 
  xlab("carrier (IATA)") +  ylab("arrival delay (min)") + ggtitle("Arrival delays by carrier")
ggsave("slides/images/arr-delay-violin.png", height = 650/150, width = 800/150, device = "png")

nycflights13::flights %>%
  ggplot() + aes(x=carrier, y=arr_delay) + geom_violin() + ylim(-100, 250) + 
  xlab("carrier (IATA)") +  ylab("arrival delay (min)") + ggtitle("Arrival delays by carrier (cropped)")
ggsave("slides/images/arr-delay-violin-cropped.png", height = 650/150, width = 800/150, device = "png")

nycflights13::flights %>% filter(carrier %in% c("AA", "DL", "WN", "UA", "VX", "B6")) %>%
  ggplot() + aes(x=hour(time_hour), y=dep_delay) + geom_smooth() + 
  xlab("time of day (hour)") + ylab("departure delay (min)") + ggtitle("Departure delays over time")
ggsave("slides/images/dep-delay.png", height = 650/150, width = 800/150, device = "png")

nycflights13::flights %>% filter(carrier %in% c("AA", "DL", "WN", "UA", "VX", "B6")) %>%
  ggplot() + aes(x=hour(time_hour), y=dep_delay, color=carrier) + geom_smooth() + 
  xlab("time of day (hour)") + ylab("departure delay (min)") + ggtitle("Departure delays over time by carrier")
ggsave("slides/images/dep-delay-color.png", height = 650/150, width = 800/150, device = "png")

nycflights13::flights %>% filter(carrier %in% c("AA", "DL", "WN", "UA", "VX", "B6")) %>%
  ggplot() + aes(x=hour(time_hour), y=dep_delay) + geom_smooth() + facet_grid(~carrier) + 
  xlab("time of day (hour)") + ylab("departure delay (min)") + ggtitle("Departure delays over time by carrier")
ggsave("slides/images/dep-delay-facet.png", height = 650/150, width = 800/150, device = "png")

nycflights13::flights %>% filter(carrier %in% c("AA", "DL", "WN", "UA", "VX", "B6")) %>%
  ggplot() + aes(x=hour(time_hour), y=dep_delay) + geom_smooth() + facet_grid(carrier~.) + 
  xlab("time of day (hour)") + ylab("departure delay (min)") + ggtitle("Departure delays over time by carrier")
ggsave("slides/images/dep-delay-facet-other.png", height = 650/150, width = 800/150, device = "png")


nycflights13::flights %>% filter(carrier %in% c("AA", "DL", "WN", "UA", "VX", "B6")) %>%
  ggplot() + aes(x=hour(time_hour), y=dep_delay) + geom_smooth() + facet_grid(origin~carrier) + 
  xlab("time of day (hour)") + ylab("departure delay (min)") + ggtitle("Departure delays over time by carrier and origin airport")
ggsave("slides/images/dep-delay-origin-facet.png", height = 650/150, width = 800/150, device = "png")



# nycflights13::flights %>% 
#   ggplot() + aes(x=carrier, y=arr_delay, group=paste(origin,carrier), color=origin) + geom_violin()
# nycflights13::flights %>% 
#   ggplot() + aes(x=carrier, y=arr_delay, group=paste(origin,carrier), color=origin) + geom_violin() + ylim(-100, 250)
# nycflights13::flights %>% 
#   ggplot() + aes(x=carrier, y=arr_delay) + geom_violin() + facet_grid(~origin) + ylim(-100, 250)
# nycflights13::flights %>% 
#   ggplot() + aes(x=time_hour, y=dep_delay, color=origin) + geom_point()
# nycflights13::flights %>% 
#   ggplot() + aes(x=hour(time_hour), y=dep_delay, color=origin) + geom_smooth()
# 
# nycflights13::flights %>% 
#   ggplot() + aes(x=hour(time_hour), fill=carrier) + geom_histogram(binwidth=1)
# nycflights13::flights %>% 
#   ggplot() + aes(x=hour(time_hour), fill=carrier) + geom_histogram(binwidth=1) + facet_grid(~origin)
# nycflights13::flights %>% 
#   ggplot() + aes(x=hour(time_hour)) + geom_histogram(binwidth=1) + facet_grid(carrier~origin)
# 
# 
# ggplot(nycflights13::flights) + aes(x=carrier, y=arr_delay) + geom_point()


