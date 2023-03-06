library(ggplot2)
library(dplyr)

ck_data <- read.csv("./2017-2023-10-Checkouts-SPL-Data.csv")

jan_over30_checkouts <- ck_data %>%
  filter(CheckoutMonth == 1) %>% 
  filter(Checkouts >= 30)

ggplot(jan_over30_checkouts) +
  geom_line(aes(x = CheckoutYear, 
                 y = Checkouts,
                 color = UsageClass)) +
  facet_wrap(~UsageClass) +
  labs(title = "Materials with over 30 checkouts in January",
       x = "Year of Checkout",
       y = "Checkout numbers",
       color = "Class of Usage")
