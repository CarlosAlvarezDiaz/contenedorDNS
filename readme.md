# Contenedor DNS con Bind9 y Docker Compose

Este repositorio contiene un archivo `docker-compose.yml` que configura un contenedor Docker con la imagen oficial de Bind9. El contenedor se configura con volúmenes para persistir la configuración y los datos de Bind9.

## Configuración y uso

### Requisitos

- Docker y Docker Compose deben estar instalados en tu sistema.

### Contenido del archivo `docker-compose.yml`

El archivo `docker-compose.yml` contiene la configuración para el contenedor Bind9:

- Imagen: Utiliza la imagen oficial de Bind9 (`sameersbn/bind:latest`).
- Volúmenes: Se utilizan para persistir la configuración y los datos de Bind9.
  - `./data/etc:/etc/bind`: Volumen para la configuración de Bind9.
  - `./data/var:/var/cache/bind`: Volumen para los datos de Bind9.
- Puertos: Se exponen los puertos 53 (TCP y UDP) para permitir el acceso a Bind9 desde fuera del contenedor.
- Reinicio: Se establece la política de reinicio en `always` para que el contenedor se reinicie automáticamente si falla.

### Cómo iniciar el contenedor

1. Clona este repositorio:

    git clone https://github.com/tu-usuario/contenedorDNS.git
    cd contenedorDNS

2. Inicia el contenedor:

    docker-compose up -d

    ![lanzamiento del docker-compose up](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/76e9aac6cac8935ff0d6c4d7c5bae9b013e08ad4/docker-compose_up.png)

    ![contenedor e imagen creados](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/76e9aac6cac8935ff0d6c4d7c5bae9b013e08ad4/contenedor_imagen_creados.png)

   Esto iniciará el contenedor en segundo plano (`-d` significa *detached*).

### Cómo detener el contenedor

Puedes detener el contenedor ejecutando el siguiente comando en el directorio del proyecto:

docker-compose down
