# Brazilian Municipal Elections, 1996

This repo contains data on municipal elections in Brazil that took place in 1996. Since this data is partially unavailable in the TSE's [main repository](http://www.tse.jus.br/eleicoes/estatisticas/repositorio-de-dados-eleitorais-1/repositorio-de-dados-eleitorais) as of now, I make use of a different [official source](http://www.tse.jus.br/eleicoes/eleicoes-anteriores/eleicoes-1996/resultados-das-eleicoes) to extract and clean the electoral data. The cleaned dataset in `.Rda` format can be download [here](https://github.com/meirelesff/munic_population/raw/master/pop_ibge_2000_2017.Rda). Conversely, one may get the data direct from `R`:

```
load(url("https://github.com/meirelesff/munic_population/raw/master/pop_ibge_2000_2017.Rda"))
```