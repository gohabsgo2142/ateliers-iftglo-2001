docker build -t python_app .
docker run --rm -it --network="host" python_app
