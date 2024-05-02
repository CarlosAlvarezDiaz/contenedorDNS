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


Comprobacion de los comandos de red del enlace:

Ping

![](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/2effc464d7cd5f417f30cb979e1724ac4a0c28ff/primer-comando.png)

Tracepath

![instalacion tracepath](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/7abfd45f784dc89b391ce1fdf63ff7801305b1b4/instalar-tracepath.png)

![Comprobacion tracepath](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/7abfd45f784dc89b391ce1fdf63ff7801305b1b4/tracepath.png)

MTR

![instalacion mtr](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/7abfd45f784dc89b391ce1fdf63ff7801305b1b4/instalacionmtr.png)

![comprobacion mtr](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/7abfd45f784dc89b391ce1fdf63ff7801305b1b4/mtr.png)

IfConfig

![IfConfig](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/7abfd45f784dc89b391ce1fdf63ff7801305b1b4/ifconfig.png)

Ifup

![Ifup](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/7abfd45f784dc89b391ce1fdf63ff7801305b1b4/ifup.png)

ip address

![ip address](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/7abfd45f784dc89b391ce1fdf63ff7801305b1b4/ipaddress.png)

Host

![host](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/7abfd45f784dc89b391ce1fdf63ff7801305b1b4/host.png)

Netstat

![netstat](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/7abfd45f784dc89b391ce1fdf63ff7801305b1b4/netstat.png)

Route

![route](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/7abfd45f784dc89b391ce1fdf63ff7801305b1b4/route.png)

ifplugd y dhclient no estan disponibles para alpine

WhoIs

![whois](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/7abfd45f784dc89b391ce1fdf63ff7801305b1b4/whois.png)

curl tampoco esta disponible

Pruebas con Dig

Prueba con Dig 1

![dig1](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/92d0e0457e89292f91603523b5870e82c1e99d83/dig-1.png)

Prueba con Dig 2

![dig2](https://github.com/CarlosAlvarezDiaz/contenedorDNS/blob/92d0e0457e89292f91603523b5870e82c1e99d83/dig-2.png)