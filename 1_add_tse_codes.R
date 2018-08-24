# ---
# 1 ADD TSE CODES
# ---


# Packages
library(electionsBR)
library(tidyverse)


# Load cleaned data
load("data/elections96.Rda")


# Get and reduce officla data with TSE codes
codes <- electionsBR::voter_profile(1996) %>%
  group_by(UF, MUNICIPIO, COD_MUNICIPIO_TSE) %>%
  summarise() %>%
  setNames(c("state", "municipality", "cod_tse"))


# Join data
elections96 <- left_join(elections96, codes)


# Save
save(elections96, file = "data/elections96.Rda")

rm(list = ls())

