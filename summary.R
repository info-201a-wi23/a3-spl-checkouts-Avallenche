library(dplyr)

ck_data <- read.csv("./2017-2023-10-Checkouts-SPL-Data.csv")

# Calculating the monthly max checkouts in digital materials
max_digital_checkout <- ck_data %>% 
  filter(UsageClass == "Digital") %>% 
  filter(Checkouts == max(Checkouts)) %>% 
  pull(Title)

# Calculating the monthly max checkouts in physical materials
max_physical_checkout <- ck_data %>% 
  filter(UsageClass == "Physical") %>% 
  filter(Checkouts == max(Checkouts)) %>% 
  pull(Title)

# Calculating the maximum checkouts materials in the year of 2017
max_2017_checkout <- ck_data %>% 
  filter(CheckoutYear == 2017) %>% 
  filter(Checkouts == max(Checkouts)) %>% 
  pull(Title)

# Finding the maximum checkouts year for 24K Magic
max_24k_year <- ck_data %>% 
  filter(Title == "24K Magic") %>% 
  group_by(CheckoutYear) %>% 
  summarise(total_checkout = sum(Checkouts)) %>% 
  filter(total_checkout == max(total_checkout)) %>% 
  pull(CheckoutYear)

# Give a summary for the annual total checkouts for digital materials
digital_checkouts <- ck_data %>% 
  filter(UsageClass == "Digital") %>% 
  group_by(CheckoutYear) %>% 
  summarise(total_checkout = sum(Checkouts))
