FROM rust:latest AS build
WORKDIR /app
COPY . .
RUN --mount=type=cache,target=/home/root/.cargo \
    --mount=type=cache,target=/app/target/release/deps \
    cargo build --release

FROM debian:buster-slim
WORKDIR /app
RUN apt update; apt install -y libpq-dev
ENV DATABASE_URL=postgres://postgres:postgres@localhost
COPY --from=build /app/target/release/rust_api ./rust_api
CMD [ "./rust_api" ]
