# projeto-facul-banco

## Explicação

O projeto é um pequeno sistema de eventos esportivos.
Um atleta só pode participar de uma única equipe.

Uma equipe pode participar de um de de vários eventos esportivos, mas não pode estar registrado mais de uma vez no mesmo evento esportivo.

Um espectador só pode comprar um ingresso para o mesmo evento esportivo, mas pode comprar ingressos para outros eventos esportivos.

Um colaborador pode desempenhar função em diversos eventos esportivos, limitado pela regra de negócio da empresa que utilizaria.

Um patrocinador pode patrocinar vários eventos esportivos.

## Normalização
O modelo ER foi pensando com boas práticas de normalização, logo, não foram necessário normalizar para a 1FN, 2FN e 3FN.

- 1FN: O modelo lógico já está na primeira forma normal (Elimina grupos repetitivos e garante que cada valor em uma tabela seja atômico)
- 2FN: O modelo jógico já está na segunda forma normal (Dependência funcional da chave primária)
- 3FN: O modelo jógico já está na terceira forma normal (Dependência transitiva)

## Descrição dos arquivos

O projeto foi utilizado SQLite por simplicidade.

Modelo ER: [esportivo.png](esportivo.png)

Modelo Lógico: [logico.png](logico.png)

Modelo Físico: [banco_ddl.sql](banco_ddl.sql)

Popular o banco: [geracao_dados.sql](geracao_dados.sql)

Arquivo SQLITE: [campeonato.db](campeonato.db)
