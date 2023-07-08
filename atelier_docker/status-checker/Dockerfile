FROM haskell:9.0.2
RUN stack setup --install-ghc
WORKDIR /app
COPY . .
RUN stack build
CMD ["stack", "run"]