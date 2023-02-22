library(ggplot2)
library(dplyr)

ck_data <- read.csv("./2017-2023-10-Checkouts-SPL-Data.csv")

ebook_checkouts <- ck_data %>% 
  filter(MaterialType == "EBOOK") %>% 
  group_by(CheckoutYear) %>% 
  summarise(total_checkout = sum(Checkouts))

ggplot(ebook_checkouts) +
  geom_line(aes(x = CheckoutYear, y = total_checkout)) +
  labs(title = "Annual Ebooks Checkout numbers",
       x = "Year of Checkout",
       y = "Checkout amount")
