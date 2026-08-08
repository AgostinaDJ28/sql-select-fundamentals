# Consultas básicas SELECT - TechStore

Este repositorio contiene consultas SQL básicas realizadas sobre la tabla sales para generar información útil para el equipo de finanzas.

## ¿Por qué es mala práctica usar SELECT * en producción?

Usar SELECT * en producción puede ser una mala práctica por varias razones.

Primero, puede afectar el rendimiento porque la consulta trae todas las columnas de una tabla, incluso aquellas que no son necesarias. Esto aumenta la cantidad de datos que se deben procesar.

Segundo, dificulta el mantenimiento. Si en el futuro se agregan nuevas columnas a la tabla, SELECT * también las traerá automáticamente, aunque la consulta original no las necesite.

Además, puede existir un problema de seguridad si la tabla contiene información sensible que no debería mostrarse en determinados reportes.

Por ejemplo, si el equipo de finanzas solo necesita customer_id, product_id y total_amount, es mejor seleccionar únicamente esas columnas.

## ¿Por qué son importantes los alias para un stakeholder no técnico?

Los alias permiten cambiar temporalmente el nombre de una columna para que el resultado sea más fácil de interpretar.

Por ejemplo:

SELECT total_amount AS monto_total
FROM sales;

La columna original se llama total_amount, que es un nombre técnico en inglés. Con el alias monto_total, una persona del área de finanzas puede entender directamente que ese dato representa el monto total de la venta, sin necesidad de conocer la estructura interna de la base de datos.
