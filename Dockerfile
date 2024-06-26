FROM adoptopenjdk/openjdk11:jdk-11.0.11_9-alpine-slim

ARG PLAY_CLI_VERSION

RUN apk update && \
    apk add --no-cache jq wget unzip

# Install released Version from artefacts
RUN wget -q "https://github.com/Vacxe/google-play-cli-kt/releases/download/$PLAY_CLI_VERSION/google-play-cli.tar" && \
    tar -xvf "google-play-cli.tar" -C /usr/local &&  \
    rm "google-play-cli.tar"

ENV PATH="${PATH}:/usr/local/google-play-cli/bin/"

RUN echo "CLI version:" && google-play-cli version
