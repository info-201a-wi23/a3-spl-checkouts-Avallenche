library(dplyr)

ck_data <- read.csv("./2017-2023-10-Checkouts-SPL-Data.csv")

<<<<<<< HEAD
# Calculating the monthly max checkouts in digital materials
=======
>>>>>>> f2afe2726a70b07dfa780d25b9b2b7f9baba6532
max_digital_checkout <- ck_data %>% 
  filter(UsageClass == "Digital") %>% 
  filter(Checkouts == max(Checkouts)) %>% 
  pull(Title)

<<<<<<< HEAD
# Calculating the monthly max checkouts in physical materials
=======
>>>>>>> f2afe2726a70b07dfa780d25b9b2b7f9baba6532
max_physical_checkout <- ck_data %>% 
  filter(UsageClass == "Physical") %>% 
  filter(Checkouts == max(Checkouts)) %>% 
  pull(Title)

<<<<<<< HEAD
# Calculating the maximum checkouts materials in the year of 2017
=======
>>>>>>> f2afe2726a70b07dfa780d25b9b2b7f9baba6532
max_2017_checkout <- ck_data %>% 
  filter(CheckoutYear == 2017) %>% 
  filter(Checkouts == max(Checkouts)) %>% 
  pull(Title)

<<<<<<< HEAD
# Finding the maximum checkouts year for 24K Magic
=======
>>>>>>> f2afe2726a70b07dfa780d25b9b2b7f9baba6532
max_24k_year <- ck_data %>% 
  filter(Title == "24K Magic") %>% 
  group_by(CheckoutYear) %>% 
  summarise(total_checkout = sum(Checkouts)) %>% 
  filter(total_checkout == max(total_checkout)) %>% 
  pull(CheckoutYear)

<<<<<<< HEAD
# Give a summary for the annual total checkouts for digital materials
digital_checkouts <- ck_data %>% 
  filter(UsageClass == "Digital") %>% 
=======
ebook_checkouts <- ck_data %>% 
  filter(MaterialType == "EBOOK") %>% 
>>>>>>> f2afe2726a70b07dfa780d25b9b2b7f9baba6532
  group_by(CheckoutYear) %>% 
  summarise(total_checkout = sum(Checkouts))
