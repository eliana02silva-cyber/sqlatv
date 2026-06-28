# Função SQL - Total de Clientes por Dia

## Objetivo

Criar uma função em MySQL que retorne a quantidade de clientes cadastrados em uma determinada data.

## Estrutura

- Banco: loja
- Tabela: clientes

## Função

total_clientes_dia(dataConsulta DATE)

## Exemplo de uso

```sql
SELECT total_clientes_dia('2026-06-28');