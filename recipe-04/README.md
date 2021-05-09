# Receta-04 & 05. Proyecto donde se controla la compilación con condicionales  & elección por el usuario

En esta receta se muestra como CMake configura y construye un proyecto con más de un archivo fuente `hello-world.c`, `message.h` y `message.c`. Esta receta muestra cómo utilizar biblioteca o sin biblioteca.

## Pasos para configurar y generar el ejecutable

Se comienza a partir del código fuente y CMakeLists.txt del proyecto anterior.

### 1. Crear el archivo CMakeLists.txt

Revisar el archivo [CMakeList](CMakeLists.txt):

- Agregar una variable **USE_LIBRARY** con `set()`
- Se puede imprimir el valor con `message()`
- Se asigna el valor  **OFF** a la variable global de CMake **BUILD_SHARED_LIBS** con `set()`. Esta opción *OF* permite que en `add_library()` se omita el parámetro *SHARED*
- Se utiliza `if-else` basado en el valor de **USE_LIBRARY**

### 2. Configurar el proyecto

### 3. Compilar el ejecutable
