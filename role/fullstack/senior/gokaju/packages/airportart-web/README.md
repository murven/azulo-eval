# AZULO | Airportar-Web

## 📌 Requerimientos

Para ejecutar la aplicación se deben tener instaladas las siguientes herramientas:

- Docker
- Docker Compose
- Node.js 16+
- npm 6+

## ⚙️ Instalación

Lo primero que debemos realizar, es la clonación del repositorio:

```
git clone https://github.com/GoKaju/azulo-eval.git
```

Luego debemos ingresar a la carpeta de trabajo:

```bash
cd role/fullstack/senior/gokaju/packages/airpotar-web/
```

instalar las dependencias necesarias:

```bash
npm install
```

y desplegar en modo desarrollo:

```bash
npm run dev
```

Ahora deberíamos poder acceder a la aplicación en la ruta generada por Vite.

## Explicación de archivos

- [.dockerignore](.dockerignore): En este archivo se encuentra la configuración de los archivos que deben ser ignorados por docker al momento de ejecutar el comando COPY.
- [.env.development](.env.development): En este archivo se encuentra la configuración de las variables de entorno que se utilizarán en la aplicación en el entorno de desarrollo.
- [.gitignore](.gitignore): En este archivo se encuentra la configuración de los archivos que deben ser ignorados por git al momento de realizar un commit.
- [Dockerfile](Dockerfile): En este archivo se encuentra la configuración de la imagen de docker que se utilizará para el despliegue de la aplicación.
- [package.json](package.json): En este archivo se encuentra la configuración de las dependencias que se utilizarán en el proyecto.
- [tsconfig.json](tsconfig.json): En este archivo se encuentra la configuración de typescript que se utilizará en el proyecto.
- [index.html](index.html): En este archivo se encuentra la configuración de la página principal de la aplicación.
- [tsconfig.node.json](tsconfig.node.json): En este archivo se encuentra la configuración de typescript que se utilizará en el proyecto para el servidor de desarrollo.
- [vite.config.ts](vite.config.ts): En este archivo se encuentra la configuración de Vite que se utilizará en el proyecto.

---

### Deiby Gomez [@Gokaju](https://github.com/GoKaju)
