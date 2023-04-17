#!/bin/bash

echo "Utilizadores"
docker exec clav_mongo mongoexport -d m51-clav -c users -o /backup/users.json

echo "Notícias"
docker exec clav_mongo mongoexport -d m51-clav -c noticias -o /backup/noticias.json

echo "Colaborações"
docker exec clav_mongo mongoexport -d m51-clav -c colaboracoes -o /backup/colaboracoes.json

echo "Documentação de Apoio"
docker exec clav_mongo mongoexport -d m51-clav -c docApoio -o /backup/docApoio.json

echo "Produção Científica"
docker exec clav_mongo mongoexport -d m51-clav -c prodCientifica -o /backup/prodCientifica.json

echo "Autos"
docker exec clav_mongo mongoexport -d m51-clav -c autos -o /backup/autos.json

echo "Chaves"
docker exec clav_mongo mongoexport -d m51-clav -c chaves -o /backup/chaves.json

echo "Pedidos"
docker exec clav_mongo mongoexport -d m51-clav -c pedidos -o /backup/pedidos.json

echo "Exportar do container"
docker cp clav_mongo:/backup/users.json .
docker cp clav_mongo:/backup/noticias.json .
docker cp clav_mongo:/backup/colaboracoes.json .
docker cp clav_mongo:/backup/docApoio.json .
docker cp clav_mongo:/backup/prodCientifica.json .
docker cp clav_mongo:/backup/autos.json .
docker cp clav_mongo:/backup/chaves.json .
docker cp clav_mongo:/backup/pedidos.json .

echo "Backup terminado!"

