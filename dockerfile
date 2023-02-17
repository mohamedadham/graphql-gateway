FROM node:15.14
COPY . /work
WORKDIR /work
RUN npm i
CMD if [ -f "init.sh" ]; then sh init.sh; fi && npm start