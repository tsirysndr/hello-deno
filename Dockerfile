FROM denoland/deno:1.46.3

RUN apt-get update

RUN apt-get install -y curl

WORKDIR /app

COPY . .

EXPOSE 8000

CMD ["run", "--allow-net", "main.tsx"]
