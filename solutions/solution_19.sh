docker run -e POSTGRES_PASSWORD=postgres -p 5432:5432 --rm postgres
# ou
docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 --rm -d postgres
