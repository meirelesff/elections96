# ---
# 0 DATA CLEANING
# ---


# Packages
library(tidyverse)


# Dir to store cleaned data
if(!dir.exists("data")) dir.create("data")


# Clean raw data
round1 <- read_delim("raw_data/pref_primeiro_turno.csv", delim = ",", skip = 6, 
                     locale = locale(encoding = "latin1")) %>%
  setNames(c("office", "state", "municipality", "party", "party_number", "candidate",
             "votes", "result", "vote_share", "electoral_coalition")) %>%
  select(state, municipality, party, votes, result) %>%
  filter(result == "Eleito") %>%
  select(-result) %>%
  mutate(round = 1)

round2 <- read_delim("raw_data/pref_segundo_turno.csv", delim = ",", skip = 6, 
                     locale = locale(encoding = "latin1")) %>%
  setNames(c("office", "state", "municipality", "party", "party_number", "candidate",
             "votes", "result", "vote_share", "electoral_coalition")) %>%
  select(state, municipality, party, votes, result) %>%
  filter(result == "Eleito") %>%
  select(-result) %>%
  mutate(round = 2)


# Bind data
elections96 <- bind_rows(round1, round2)


# Save
save(elections96, file = "data/elections96.Rda")

rm(list = ls())
