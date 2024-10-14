FROM node:20.17.0

WORKDIR /app

COPY package.json .

RUN npm install

RUN npm install bcryptjs

COPY . .


EXPOSE 8080


CMD ["npm", "start"]

# Luego de crear el Dockerfile, debemos construir la imagen de nuestro contenedor
# Para esto, debemos ejecutar el siguiente comando en la terminal:
# docker build -t nombre-de-la-imagen . (reemplazar nombre-de-la-imagen por el nombre que quieras darle a tu imagen)

# Una vez que la imagen se haya construido, podemos correr un contenedor a partir de ella
# Para esto, debemos ejecutar el siguiente comando en la terminal:
# docker run -p 8080:8080 nombre-de-la-imagen (reemplazar nombre-de-la-imagen por el nombre que le diste a tu imagen)
