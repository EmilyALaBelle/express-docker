#go to docker hub and get image of alpine 16
FROM node:16-alpine3.15 

#create a folder called source this is where i will run evrything
WORKDIR /src/ 

#copy our files into the src folder
COPY . .     

#now run npm install (install dependencies)
RUN npm install  

#set port to 3000
ENV PORT=3000 

#Open the port 3000
EXPOSE 3000 

#runs the command npm start
CMD [ "npm", "start" ]  