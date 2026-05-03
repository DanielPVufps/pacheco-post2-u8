# Laboratorio Unidad 8 - PostContenido 2

**Arquitectura de Computadores**
**Nombre:** Daniel Pacheco Villamizar
**Código:** 1152438

---

## ✔ Checkpoint 1: Suma de 32 bits (ADC)

Se realiza la suma de dos números de 32 bits usando las instrucciones `ADD` y `ADC`.
`ADC` permite sumar la parte alta incluyendo el acarreo.

Resultado esperado:
Suma OK: 0003:0000

Se verifica que:

* AX = 0000h
* DX = 0003h

---

## ✔ Checkpoint 2: Resta de 32 bits (SBB)

Se realiza una resta de 32 bits usando `SUB` y `SBB`.
`SBB` incluye el préstamo generado en la resta.

Resultado esperado:
Resta OK

Se verifica que:

* AX = FFFFh
* DX = 0001h

---

## ✔ Checkpoint 3: Suma BCD (DAA)

Se suman números en formato BCD empaquetado.
La instrucción `DAA` ajusta el resultado para que sea un BCD válido.

Ejemplo:
47 + 38 = 85

Resultado esperado:
BCD suma: 85

---

## ✔ Checkpoint 4: Resta BCD (DAS)

Se realiza una resta en BCD.
La instrucción `DAS` corrige el resultado para mantener formato válido.

Ejemplo:
73 - 28 = 45

Resultado esperado:
45

---

## ✔ Checkpoint 5: Calculadora (MUL y DIV)

Se implementa una calculadora que permite multiplicar y dividir números de un dígito.

Casos de prueba:

7 * 8 = 56
9 / 3 = 3
División por 0 → muestra error

---

## ✔ Evidencias

Se incluyen capturas de cada checkpoint (mínimo 2 por cada uno).

---
