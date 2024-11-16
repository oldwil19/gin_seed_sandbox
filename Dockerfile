# Etapa de construcción
FROM golang:1.23.3-alpine3.20 AS build

WORKDIR /build

RUN apk add --no-cache git

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -o main . && chmod +x main

# Etapa final
FROM alpine:3.20

RUN apk add --no-cache ca-certificates

WORKDIR /app

COPY --from=build /build/main .

EXPOSE 8080

CMD ["./main"]
