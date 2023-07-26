#FROM Instruction initializes a new build stage and sets the Base Image for subsequent instructions.
FROM node:latest
#WORKDIR The command is specified in the Dockerfile.
WORKDIR /app
#COPY The command that copies files from a local source location to a destination in the Docker container.
COPY . /app/
##RUN Instruct docker to run npm install only during the image build process in order to install all necessary node JS packages as specified in package.json.
RUN npm install 
#CMD Defines the default executable of a Docker image.
CMD ["node", "app.js"]