### Carlos Soto Alarcón - A01747990

# Reporte: Complejidad del Resaltador de Sintaxis en Elixir

El resaltador de sintaxis implementado en Elixir utiliza expresiones regulares para identificar diferentes elementos léxicos en un archivo fuente de Python y generar un documento HTML con el código resaltado. 

## Complejidad

El resaltador de sintaxis procesa el archivo línea por línea y realiza una serie de escaneos de expresiones regulares para identificar los elementos léxicos, como palabras clave, operadores, literales y comentarios.

    El resaltador de sintaxis recorre el archivo línea por línea utilizando la función Enum.map/2. Esto implica una iteración por cada línea del archivo fuente.

    Para cada línea, se realizan varios escaneos de expresiones regulares para identificar los elementos léxicos. Estos escaneos se realizan utilizando la función Regex.scan/2. La complejidad de cada escaneo depende del tamaño de la línea y de la expresión regular utilizada.

    Una vez que se obtienen los tokens léxicos para cada línea, se realiza una iteración sobre ellos utilizando la función Enum.reduce/3. Esta iteración se realiza para resaltar cada token en la línea con el formato HTML correspondiente.

En general, la complejidad del resaltador de sintaxis depende del tamaño del archivo fuente y de la complejidad de las expresiones regulares utilizadas para identificar los elementos léxicos, es decir, cuanto más largo sea el archivo y más complejas sean las expresiones regulares, más iteraciones y operaciones se realizarán.

## Reflexión

El resaltador de sintaxis implementado en Elixir es una solución eficiente para identificar y resaltar los elementos léxicos en un archivo fuente de Python. El uso de expresiones regulares permite una identificación precisa y flexible de los tokens, lo que facilita la generación del código HTML resaltado. Además, el uso de las tuberías (|>) en Elixir permite una composición concisa y legible de las operaciones.

## Impacto en la Sociedad

La tecnología de resaltado de sintaxis tiene un impacto significativo en la sociedad en el ámbito de la programación y el desarrollo de software. Al resaltar los elementos léxicos en un código fuente, se mejora la legibilidad y comprensión del mismo, lo que facilita el análisis y la detección de errores.

El resaltado de sintaxis puede ser utilizado en IDEs y editores de código, proporcionando una experiencia de programación amigable. Puede ayudar a identificar rápidamente elementos clave como variables y comentarios.

El resaltado de sintaxis también podría ser útil en la educación y el aprendizaje de la programación, ya que al destacar los diferentes componentes del código, facilita la comprensión de la estructura y la lógica de programación, especialmente para aquellos que están comenzando en este campo.

En conclusión, el resaltador de sintaxis basado en expresiones regulares presentado para el reto es una solución eficiente para mejorar la legibilidad de código. Esta tecnología tiene un impacto positivo en la productividad y en el proceso de aprendizaje de la programación.