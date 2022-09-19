# AZULO | Airportar-Api

## 📌 Requerimientos

Para ejecutar la aplicación se deben tener instaladas las siguientes herramientas:

- Docker
- Docker Compose
- Node.js 16+
- npm 6+

## ⚙️ Instalación

Lo primero que debemos realizar, es la clonación del repositorio:

```bash
git clone https://github.com/GoKaju/azulo-eval.git
```

Luego debemos ingresar a la carpeta de trabajo:

```bash
cd role/fullstack/senior/gokaju/packages/airpotar-api/
```

instalar las dependencias necesarias:

```bash
npm install
```

y desplegar en modo desarrollo:

```bash
npm run dev
```

Ahora deberíamos poder acceder a la api el los siguientes ruta:[http://localhost/api/v1/](http://localhost/api/v1/)

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

- [.dockerignore](.dockerignore): En este archivo se encuentra la configuración de los archivos que deben ser ignorados por docker al momento de ejecutar el comando COPY.
- [.env.development](.env.development): En este archivo se encuentra la configuración de las variables de entorno que se utilizarán en la aplicación en el entorno de desarrollo.
- [.gitignore](.gitignore): En este archivo se encuentra la configuración de los archivos que deben ser ignorados por git al momento de realizar un commit.
- [.nvmrc](.nvmrc): En este archivo se encuentra la configuración de la versión de node que se utilizará en el proyecto.
- [Dockerfile](Dockerfile): En este archivo se encuentra la configuración de la imagen de docker que se utilizará para el despliegue de la aplicación.
- [nodemon.json](nodemon.json): En este archivo se encuentra la configuración de nodemon que se utilizará para el despliegue de la aplicación en modo desarrollo.
- [package.json](package.json): En este archivo se encuentra la configuración de las dependencias que se utilizarán en el proyecto.
- [tsconfig.json](tsconfig.json): En este archivo se encuentra la configuración de typescript que se utilizará en el proyecto.

---

### Deiby Gomez [@Gokaju](https://github.com/GoKaju)
