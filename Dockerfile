FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Install Racket
RUN apt-get update && apt-get install -y wget
RUN wget https://download.racket-lang.org/installers/8.6/racket-8.6-x86_64-linux.sh
RUN sh racket-8.6-x86_64-linux.sh --unix-style --dest /usr/ --create-dir
RUN rm racket-8.6-x86_64-linux.sh
