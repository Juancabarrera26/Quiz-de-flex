 # Quiz de flex – Validación de Números Complejos con Flex

---

## Objetivo

Implementar un programa utilizando Flex que permita identificar números complejos de la forma:

a + bi


Donde:

- a y b pertenecen a los números reales
- i puede ser i, I, j o J
- La entrada debe realizarse por medio de un archivo de texto
- La salida debe indicar por pantalla si el contenido del archivo es válido o no mediante:
  - ACEPTA
  - NO ACEPTA

---

## Formato de Entrada

El programa debe aceptar expresiones de la forma:

- a+bi
- a-bi
- a + bi
- a - bj

Donde:

- a y b pueden ser números reales
- Se permiten números:
  - Enteros
  - Decimales
  - Notación científica

Ejemplos válidos:

``` 
3+4i
3 - 4j
-2.5+0.3e2I
.5-1.2J
```

---

## Compilación

```
flex -o quiz.c quiz.l
gcc -o quiz quiz.c -lfl
```
## Ejecución

```
./quiz archivo.txt
```

<img width="344" height="275" alt="Captura de pantalla 2026-02-19 091809" src="https://github.com/user-attachments/assets/78f74ed1-5d9e-4f3e-9224-a63a7d6297f5" />


## Casos de Prueba

### Caso 1 – Entrada válida

Creación del archivo:

```
echo "3+4i" > caso1.txt
```

Ejecución:

```
./quiz caso1.txt
```

Salida esperada:

```
ACEPTA
```

## Caso 2 – Entrada válida con espacios y notación científica

### Creación del archivo:

```
echo " -2.5  -  0.3e2J " > caso2.txt
```

Ejecución:

```
./quiz caso2.txt
```

Salida esperada:

```
ACEPTA
```
Caso 3 – Entrada inválida

Creación del archivo:

```
echo "3+i" > caso3.txt
```

Ejecución:

```
./quiz caso3.txt
```

Salida esperada:

```
NO ACEPTA
```

## Conclusión

Se implementó un analizador léxico utilizando Flex capaz de validar números complejos de la forma a+bi mediante el uso de expresiones regulares. El programa permite leer el contenido desde un archivo de texto y determinar si la expresión corresponde a un número complejo válido, mostrando como salida ACEPTA o NO ACEPTA según el resultado del análisis.

