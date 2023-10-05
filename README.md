# projeto-facul-banco

## Normalização
O modelo ER foi ensando com boas práticas de normalização, logo, não foram necessário normalizar para a 1FN, 2FN e 3FN.

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
