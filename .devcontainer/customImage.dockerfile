FROM mcr.microsoft.com/vscode/devcontainers/universal:linux

RUN sudo apt install neofetch -y && \
    sudo apt-get install -y mongodb && \
    sudo service mongodb start
