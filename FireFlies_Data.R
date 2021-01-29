
# Load Packages ------------------------------------------------------------

library(tidyverse)

# Fireflies Data ----------------------------------------------------------

fireflies_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv")

distinct(fireflies_data,spermatophoreMass)

count(fireflies_data,spermatophoreMass)

ggplot(data = fireflies_data)

ggplot(data = fireflies_data) + geom_histogram(mapping = aes(x = spermatophoreMass))

ggplot(data = fireflies_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass),
                 fill = "#C5351B", color = "black", binwidth = 0.008) +
  labs(x = "spermatophoreMass (mg)", y = "Frequency (spermatophoreMass)") +
  theme_classic() +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1))
  )

