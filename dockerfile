# Choose and ame our temporary image.
FROM ubuntu:18.04


# Add metadata identifying these images as our build containers (this will be useful later!)
# Install Node.js
RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install git -y
RUN apt-get install 

RUN curl --silent --location https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install nodejs -y
RUN apt-get install build-essential -y

# Clone a repository (my website in this case)
RUN  git clone https://github.com/moezbenselem/Voice-A11Y.git
RUN npm install -g create-react-app
#Set working directory
RUN cd /Voice-A11Y

WORKDIR /Voice-A11Y
RUN npm install
# Binds to port 8080
EXPOSE  3000

#  Defines your runtime(define default command)
# These commands unlike RUN (they are carried out in the construction of the container) are run when the container
CMD ["npm", "start"]