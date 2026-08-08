
-- ========================================== --
-- TechStore - Consultas Basicas SELECT
-- Autor: Alejandra Agostina Diaz Jalaf
-- Fecha: 07/08/2026
-- ========================================== --

-- Consulta 1: Exploracion general de la tabla sales --
-- SELECT * es util para explorar una tabla y conocer todas sus columnas --
-- En produccion no conviene usarlo siempre porque puede traer datos innecesarios y afectar el rendimiento --
SELECT * FROM sales;

-- Consulta 2: Seleccion de columnas especificas para finanzas --
SELECT customer_id,
product_id,
total_amount
FROM sales;

-- Consulta 3: Seleccion con alias en español para stakeholders --
SELECT order_date AS fecha_pedido,
product_name AS nombre_producto,
quantity AS cantidad_unidades
FROM sales;
