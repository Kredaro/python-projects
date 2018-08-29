
# Building Docker Image for Flask App using the Dockerfile (using Ubuntu:latest)
docker build -t flaskapp:latest .

# Downloading Light MongoDB container and building the image
docker pull mvertes/alpine-mongo

# Making Containers of MongoDB Client Docker Image
docker run -d -p 27017:27017 --name mongoclient mvertes/alpine-mongo

# Making Container of FlaskApp Docker Image and linking to Mongoclient Container
docker run -d -p 5000:5000 --link mongoclient --name flaskapp flaskapp:latest

echo " * Notebook FlaskApp should be live at http://localhost:5000/"