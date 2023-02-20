library(dplyr)

ck_data <- read.csv("./2017-2023-10-Checkouts-SPL-Data.csv")

max_digital_checkout <- ck_data %>% 
  filter(UsageClass == "Digital") %>% 
  filter(Checkouts == max(Checkouts)) %>% 
  pull(Title)

max_physical_checkout <- ck_data %>% 
  filter(UsageClass == "Physical") %>% 
  filter(Checkouts == max(Checkouts)) %>% 
  pull(Title)

max_2017_checkout <- ck_data %>% 
  filter(CheckoutYear == 2017) %>% 
  filter(Checkouts == max(Checkouts)) %>% 
  pull(Title)

max_24k_year <- ck_data %>% 
  filter(Title == "24K Magic") %>% 
  group_by(CheckoutYear) %>% 
  summarise(total_checkout = sum(Checkouts)) %>% 
  filter(total_checkout == max(total_checkout)) %>% 
  pull(CheckoutYear)

ebook_checkouts <- ck_data %>% 
  filter(MaterialType == "EBOOK") %>% 
  group_by(CheckoutYear) %>% 
  summarise(total_checkout = sum(Checkouts))
