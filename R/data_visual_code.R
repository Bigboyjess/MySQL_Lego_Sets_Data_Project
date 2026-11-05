library(tidyverse)

A1 <- read_csv(file.choose())
A1.5 <- read.csv(file.choose())
A2 <- read.csv(file.choose())
A3 <- read.csv(file.choose())
A4 <- read.csv(file.choose())
A5 <- read.csv(file.choose())
A6 <- read.csv(file.choose())
A7 <- read.csv(file.choose())
A8 <- read.csv(file.choose())

# line chart for A1
ggplot(data = A1, aes(x = year, y = total_sets)) +
  geom_line(color = "#009E73", linewidth = 1) +
  geom_point(color = "#009E73", size = 2) +
  labs(
    title = "LEGO Sets Released Yearly (1975-205)",
    x = "Year",
    y = "Number of LEGO Sets") +
  theme_minimal()+
  theme(plot.title = element_text(hjust = .5))

# A2 line chart
ggplot(data = A2, aes(x = year, y = avg_parts)) +
  geom_line(color = "#009E73", linewidth = 1) +
  geom_point(color = "#009E73", size = 2) +
  labs(
    title = "Are LEGO sets getting larger?",
    x = "Year",
    y = "Average Number of Parts Per LEGO SET") +
  theme_minimal()+
  theme(plot.title = element_text(hjust = .5))

#A5 Bar Chart
ggplot(data = A5, aes(x = reorder(theme_name, total_sets, desc), y = total_sets)) +
  geom_col(fill = "blue") +
  labs(
    title = "Number of LEGO Sets by Theme",
    x = "LEGO Theme",
    y = "Number of Sets") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  theme(plot.title = element_text(hjust = .5))

#A7 Bar Chart
ggplot(data = A7, aes(x = reorder(name, num_parts), y = num_parts)) +
  geom_col(fill = "red") +
  labs(title = "Top 20 largest LEGO Sets",
       x = "Set Name",
       y = "Number of Parts") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  theme(plot.title = element_text(hjust = .5))

  

       