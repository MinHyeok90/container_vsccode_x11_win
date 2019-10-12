FROM ubuntu:16.04
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN apt-get install -y curl
RUN apt-get install -y git

RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
RUN install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list
RUN apt-get install -y apt-transport-https
RUN apt-get update -y
RUN apt-get install -y code

RUN apt-get install -y libasound2
WORKDIR /app
RUN echo 'code --user-data-dir="~/.vscode-root"' > code.cmd
CMD bash