# Receta-03. Proyecto básico hello-world.c con una biblioteca

En esta receta se muestra como CMake configura y construye un proyecto con más de un archvo fuente `hello-world.c`, `message.h` y `message.c`. Esta receta muestra cómo agrupar archivos fuente en bibliotecas y como ligar *targets* con esta biblioteca.

## Pasos para configurar y generar el ejecutable

### 1. Crear el archivo CMakeLists.txt

Revisar el código [hello-world.c](hello-world.c), [message.h](message.h), [message.c](message.c) y archivo [CMakeList](CMakeLists.txt). Para los detalles de CMakeLists.txt revisar el archivo. A demás de lo incluido en la receta01:

- Requerimientos mínimos: `cmake_mminimum_requiriments()`
- Nombre del proyecto y lenguajes soportados `project()`
- Especificicación de *target*: `add_executable()`

Ahora se tiene que crear un nuevo *target* con una biblioteca estática (*static library*):

- El nombre de la biblioteca será el nombre del *target* y los archivos fuente deben ser listados: `add_library()`
- Después se debe ligar la biblioteca al *target* principal: `target_link_libraries()`

### 2. Configurar el proyecto

### 3. Compilar el ejecutable

### Cómo funciona add_library()

Despúes de construir el proyecto se crea la biblioteca en la carpeta `build`, esta biblioteca es estática y se identifica con el nombre `libmessage.a`. Existen diferentes tipos de bibliotecas:

- STATIC: Se crean los archivos objetos que serán posteriormente agregados (linked) a otros *targets*, como un ejecutable.
- SHARED: Estas bibliotecas pueden ser ligadas dinámicamente y cargadas en tiempo de ejecución. DSO (Dinamic Shared Objects)
- OBJECT: Compila los archivos listados en archivos objeto, pero no son archivados como bibliotecas estáticas o objetos compartidos. El uso de bibliotecas *OBJECT* es práctico cuando se necesita crear tanto bibliotecas estaticas (STATIC) y compartidas (SHARED).
- MODULE: En contraste con bibliotecas SHARED, no son ligadas a otro *targe* del proyecto, pueden ser dinamicamente cargadas despúes. Esto se realiza en arguementos cuando se construye un *plugin* en tiempo de ejecución.

CMake puede generar además otro tipo de bibliotecas:

- IMPORTED: Este tipo de bibliotecas *target* son localizadas fuera del proyecto. El uso principal de este tipo de bibiliotecas es modelar las dependencias  pre-existentes del proyecto.
- INTERFACE: Similar a IMPORTED, pero es mutable su localización. Para *targets* requeridos que esta afuera del proyecto.
