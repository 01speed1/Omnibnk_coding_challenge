# OmniBNK Coding Challenge

## Requerimientos
* Docker [instalar docker](https://www.digitalocean.com/community/tutorials/como-instalar-y-usar-docker-en-ubuntu-18-04-1-es)

## Antes de iniciar la app

### Buildiar los contenedores
`sudo docker-compose build`

### Crear la base de datos e instalar migraciones
`sudo docker-compose run web rails db:create  db:migrate`

## Inicar app
1. `sudo docker-compose up`

2. Ir a navegador y visistar `localhost:3000/`