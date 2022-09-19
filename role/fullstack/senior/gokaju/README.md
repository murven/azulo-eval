# AZULO | Prueba técnica para Backend Sr

## 😅 Consideraciones

En el desarrollo de la prueba técnica se tuvieron en cuenta las siguientes consideraciones:

- Se crea la documentación en español para comodidad de los lectores.
- En la documentación se expone información sensible teniendo en cuenta que es un prueba.
- Tanto la api como la web se crean con la menor cantidad de librerías/frameworks posibles para ser agnósticos a las mismas.
- El api se se crea sin seguridad alguna para hacer enfoque en el desarrollo de los items de la prueba.
- El api se creo con un modelo simplificado de arquitectura hexagonal para permitir otros adaptadores fácilmente.
- No se creo Dockerfile para la base de datos (mysql), para flyway y directus, ya que los mismos no eran necesarios para el despliegue.
- Se omitieron las siguientes tareas extra:

  1. _Extra_: Agregar funcionalidad que le permita al usuario arrastrar y dejar caer las tarjetas en diferente orden.
  2. _Extra_: Agregar funcionalidad que actualice el campo "PriorityOrder" en la base de datos cuando el usuario cambia el orden de las tarjetas.
  3. _Extra_: Levantar una instancia de MiniKube (Kubernetes)
  4. _Extra_: Levantar los mismos servicios que se levantaron usando docker-compose en MiniKube usando archivos YAML de configuración.
  5. _Extra_: Deshabilitar la funcionalidad de reordenar las tarjetas si el ordenamiento seleccionado no es por orden de prioridad.
  6. _Extra_: Agregar un control en el tope de la página que le permita al usuario desplegar las tarjetas usando la vista actual, una vista de tarjeta más pequeña o una vista de detalles, que despliega en forma de tabla en lugar de desplegarlo en forma de grilla.
  7. _Extra_: Agregar controles de paginación que le permitan al usuario navegar entre páginas de 10 tarjetas.
  8. _Extra_: Generar datos de prueba de hasta 10 mil registros por cada tabla y evaluar el rendimiento de las páginas creadas e implementar cambios que mejoren la experiencia del usuario.

## 📌 Requerimientos

Para ejecutar la aplicación se deben tener instaladas las siguientes herramientas:

- Docker
- Docker Compose

## ⚙️ Instalación y Despliegue

Lo primero que debemos realizar, es la clonación del repositorio:

```bash
git clone https://github.com/GoKaju/azulo-eval.git
```

Luego debemos ingresar a la carpeta y desplegar usando docker-compose:

```bash
cd role/fullstack/senior/gokaju/ && docker-compose up -d
```

Ahora deberíamos poder acceder a la aplicación el los siguientes rutas:

| aplicación    | ruta                                    | usuario         | contraseña       |
| ------------- | --------------------------------------- | --------------- | ---------------- |
| directus      | [Directus Admin](http://localhost:8055) | admin@email.com | d1r3ctu5P@ssw0rd |
| airportar-api | [Api](http://localhost:3000)            | n/a             | n/a              |
| airportar-web | [Web App](http://localhost:3001)        | n/a             | n/a              |

## Funcionalidades del Api

- Cambio de Operador

  - Method: POST
  - EndPoint: /api/v1/airports/change-operator
  - Payload:

  ```json
  { "airportId": 0, "newOperatorId": 0 }
  ```

- Cambio masivo de Orden de Prioridad

  - Method: POST
  - EndPoint: /api/v1/airports/bulk-change-priority
  - Payload:

  ```json
  { "airports": [{ "airportId": 0, "newPriority": 0 }] }
  ```

## Explicación de archivos

- [docker-compose.yaml](./docker-compose.yaml): En este archivo se estructura la configuración de los servicios a desplegar por docker-compose.

---

### Deiby Gomez [@Gokaju](https://github.com/GoKaju)
