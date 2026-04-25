# Reporte Final - Taller de Algoritmos

## Resumen Ejecutivo

En este taller se trabajaron diferentes algoritmos fundamentales como la búsqueda binaria, la búsqueda lineal y la implementación de una cola FIFO. A través de estas actividades se comprendió cómo funcionan los algoritmos en términos de eficiencia y estructura, aplicándolos en problemas reales como la búsqueda de datos y la gestión de solicitudes.

Además, se analizó la diferencia entre algoritmos eficientes y no eficientes, evidenciando cómo la complejidad algorítmica influye directamente en el rendimiento. También se utilizaron herramientas como PSeInt y Flowgorithm para representar y ejecutar los algoritmos, facilitando su comprensión visual y lógica.

---

## Actividad 1: Búsqueda Binaria

* **Funcionamiento:**
  La búsqueda binaria consiste en dividir el arreglo en mitades para encontrar un elemento. Primero se compara el valor del medio con el valor buscado. Si no coincide, se descarta la mitad donde no puede estar el dato y se repite el proceso hasta encontrarlo o agotar las opciones.

* **Complejidad:**
  O(log n)

* **Test Cases:**
  Búsqueda de 3301: encontrado en posición 4 en 1 comparación.
  Búsqueda de 5020: encontrado en posición 7 en 3 comparaciones.
  Búsqueda de 9999: no encontrado después de varias comparaciones.

---

## Actividad 2: Análisis con Flowgorithm

* **Diagrama:**
  Se diseñó un diagrama de flujo que representa una búsqueda lineal. El algoritmo recorre un arreglo desde la primera posición hasta la última, comparando cada elemento con el valor buscado. Si lo encuentra, muestra la posición; si no, indica que no existe.

* **Complejidad:**
  O(n)

---

## Actividad 3: Colas FIFO

* **Operaciones:**
  Se implementó una estructura de datos tipo cola (FIFO), donde el primer elemento en entrar es el primero en salir. Las operaciones principales fueron:

  * Enqueue: agregar elementos al final de la cola
  * Dequeue: eliminar el elemento al inicio
  * Visualización: mostrar el estado de la cola

* **Validación FIFO:**

| Paso | Operación | Entrada | Cola      | Tamaño | Verificación |
| ---- | --------- | ------- | --------- | ------ | ------------ |
| 1    | Enqueue   | A       | [A]       | 1      | ✓            |
| 2    | Enqueue   | B       | [A, B]    | 2      | ✓            |
| 3    | Enqueue   | C       | [A, B, C] | 3      | ✓            |
| 4    | Dequeue   | -       | [B, C]    | 2      | ✓ (salió A)  |
| 5    | Dequeue   | -       | [C]       | 1      | ✓ (salió B)  |

---

## Actividad 4: Comparativa

* **Resultados:**

| Algoritmo | Comparaciones | Complejidad | Observación                  |
| --------- | ------------- | ----------- | ---------------------------- |
| Lineal    | 7             | O(n)        | Recorre casi todo el arreglo |
| Binaria   | 3             | O(log n)    | Mucho más eficiente          |

* **Recomendaciones:**
  Se recomienda utilizar la búsqueda binaria cuando los datos estén ordenados, ya que reduce significativamente el número de comparaciones. La búsqueda lineal es útil cuando los datos no están ordenados o cuando el conjunto de datos es pequeño.

---

## Conclusiones y Aprendizajes

Este taller permitió comprender la importancia de elegir el algoritmo adecuado según el problema. Se evidenció que la búsqueda binaria es mucho más eficiente que la lineal en grandes volúmenes de datos, mientras que la cola FIFO es fundamental para manejar procesos en orden.

También se fortalecieron habilidades en lógica de programación, uso de estructuras de control y manejo de arreglos. Finalmente, el uso de herramientas como PSeInt y Flowgorithm facilitó la comprensión práctica de los algoritmos, permitiendo ver paso a paso su ejecución.
