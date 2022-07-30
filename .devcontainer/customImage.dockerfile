FROM mcr.microsoft.com/vscode/devcontainers/universal:linux

WORKDIR $HOME

RUN sudo apt update && \
    sudo wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add - && \
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list && \
    sudo apt-get update && \
    sudo apt-get install -y mongodb-org && \
    mongod --version && \
    sudo mkdir -p ~/data/db && \
    sudo curl https://raw.githubusercontent.com/mongodb/mongo/master/debian/init.d | sudo tee /etc/init.d/mongodb >/dev/null && \
    sudo chmod +x /etc/init.d/mongodb
