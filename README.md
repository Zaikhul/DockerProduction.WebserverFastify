# DockerProduction.WebserverFastify
Docker Production for Webserver Fastify

# Hentikan semua container yang berjalan
docker stop $(docker ps -a -q)

# Hapus semua container
docker rm $(docker ps -a -q)

# Hapus semua image
docker rmi $(docker images -q)

# Hapus semua volume
docker volume prune -f

# Hapus semua network yang tidak digunakan
docker network prune -f

# Hapus semua data yang tidak digunakan
docker system prune -a -f
