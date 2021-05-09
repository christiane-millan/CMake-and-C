# Receta-01 & 02. Proyecto de un solo archivo hello-word & Elección del sistema de  generador

En esta receta se muestra como CMake configura y construye un proyecto básico `hello-world.c`. El proyecto es un solo archivo fuente para un solo ejecutable.

## Pasos para configurar y generar el ejecutable

### 1. Crear el archivo CMakeLists.txt

Revisar el código [hello-world.c](hello-world.c) y archivo [CMakeList](CMakeLists.txt) para los detalles de:

- Requerimientos mínimos: `cmake_mminimum_requiriments()`
- Nombre del proyecto y lenguajes soportados `project()`
- Especificicación de *target*: `add_executable()`

### 2. Configurar el proyecto

- Crear un directorio *build*
- Ejecutar el comando `cmake` para configurar el proyecto
  
```terminal
cmake -S . -B build
```

Donde:

- `-S` especifica cual es la carpeta donde se encuetra el código fuente.
- `-B` especifica la ruta de la carpeta build

Revisar el comando CMake con `cmake --help` para más detalles sobre su uso.

La ejecución exitosa de la configuración genera los archivos Unix Makefiles (por defeccto), Ninja, Visual Studio, etc. correpondientes al sistema operatio o configuración. Revisar la carpeta build, para detalles consultar la documentación.

### 3. Compilar el ejecutable

Desde la carpeta *build*

```terminal
cmake --build .
```

o desde la carpeta root de *build*

```terminal
cmake -C build
```

Si todo es correcto, en la carpeta *build* se creará el ejecutable del proyecto.

Para mas detalles sobre los *targets* en la compilación

```terminal
cmake --build . --target help
```

### Elección del sistema de generador

Los sistemas generadores disponibles para CMake se pueden listar con el comando `cmake --help`

Para cambiar el sistema generador a utilizar (es necesario isntalar) es neceario configura el proyecto:

```terminal
mkdir -p build
cd build
cmake -G Ninja ..
```

Después ya se puede construir el proyecto:

```terminal
cmake --build .
```
