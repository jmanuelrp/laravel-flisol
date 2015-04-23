## Creación de sitios web con Laravel

Laravel es un Framework PHP para la creación de sitios web, actualmente es uno de los mas populares debido a su simpleza, flexibilidad, robustez y baja curva de aprendizaje siendo ideal tanto para nuevos usuario como avanzados.

El taller abarcara los temas esenciales para el conocimiento y uso de Laravel 5 mediante la creación de un sitio sencillo.

## Recursos

* [Sitio web de Laravel](http://laravel.com)
* [Slides (presentacion)](http://slides.com/jmanuelrp/laravel5)
* [Tutoriales](http://uno-de-piera.com/tag/tutoriales-de-laravel-5/)
* [Video tutoriales](https://styde.net/laravel-5)
* [Screencast](https://laracasts.com) *(ingles)*

## Demo/Uso del proyecto

#### 1 Instalacion de dependencias

Una vez descargado/clonado el proyecto se deben instalar las dependencias mediante composer

```shell
composer install
```

#### 2 Configuracion

Crear el archivo ```.env``` con las credenciales de la base de datos utilizando ```.env.example```

```
DB_HOST=localhost
DB_DATABASE=DB_NAME
DB_USERNAME=DB_USER
DB_PASSWORD=DB_PASSWORD
```

#### 3 Creacion de tablas y llenado de datos

**Este paso se omite si se usa el archivo** ```.sql```

Crear la base de datos desde el adminitrador

```sql
create database DB_NAME;
```

Ejecutar el comando para crear tablas y registros

```shell
php composer migrate --seed
```

El proyecto ya esta listo como *demo* y para ser modificado

## Proyecto .zip preinstalado

Para utilizar el proyecto preinstalado hay que seguir los pasos anteriores desde el **punto 2**

