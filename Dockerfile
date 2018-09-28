FROM alec892/orbis-training-docker:0.2.0
WORKDIR /app
COPY ./preguntas.md ./
RUN ls | cat preguntas.md