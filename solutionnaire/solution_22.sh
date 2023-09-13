docker run -e POSTGRES_PASSWORD=postgres -p 5432:5432 postgres
docker build -t rust_api .
docker run --rm --network="host" rust_api

# Valider que le serveur fonctionne
curl http://localhost:8081/documents
