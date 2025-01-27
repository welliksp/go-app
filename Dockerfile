FROM golang:latest
LABEL authors="wellik"

WORKDIR /app

COPY . .

RUN go build -o math

CMD ["./math"]