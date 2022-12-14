-- Databricks notebook source
SELECT * 
FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND YEAR(dtPedido)  = '2018'

-- LIMIT 100

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue ou 'delivered'.

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND YEAR(dtPedido)  = '2018'

-- LIMIT 100

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue ou 'delivered'.

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND YEAR(dtPedido)  = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30

-- LIMIT 100

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue ou 'delivered'.
