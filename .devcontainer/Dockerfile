#  Use the Python image from Docker Hub (https://hub.docker.com/_/microsoft-vscode-devcontainers - using miniconda 3 because that is what I have on my local)
FROM mcr.microsoft.com/vscode/devcontainers/miniconda

#  Advanced Packaging Tool - updating packages - adding "no-install-recommends" for smaller download and installation times 
RUN apt-get update && apt-get -y install --no-install-recommends 

#  Installing Python dependencies from requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#  Set the working directory
WORKDIR /app
