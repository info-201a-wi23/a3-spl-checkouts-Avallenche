library(ggplot2)
library(dplyr)

ck_data <- read.csv("./2017-2023-10-Checkouts-SPL-Data.csv")

jan_2023_material <- ck_data %>% 
  filter(CheckoutYear == 2023) %>% 
  filter(CheckoutMonth == 1)

ggplot(jan_2023_material) +
  geom_bar(aes(y = MaterialType)) +
  labs(title = "Materials Checked out at 2023 Jan",
       x = "Frequency",
       y = "Checkout Categories")
