# Use uma imagem base específica para o Go
FROM golang:1.23

# Metadata sobre o autor
LABEL authors="wellik"

# Configure o diretório de trabalho dentro do container
WORKDIR /app

# Copie os arquivos de dependência primeiro (para aproveitar o cache)
COPY go.mod go.sum ./

# Baixe as dependências
RUN go mod download

# Copie o restante do código para o container
COPY . .

# Compile o binário
RUN go build -o math

# Defina o comando padrão ao iniciar o container
CMD ["./math"]
