FROM ubuntu:14.04.4


# Add the application resources URL
# RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list

# Update the sources list
RUN apt-get update

# Add python tools 
RUN apt-get -y install python-pip
# Copy the application folder inside the container
ADD /app /app

#

# Set the default directory where CMD will execute
WORKDIR /app
RUN echo 'installing app'
RUN pip install -r requirements.txt
EXPOSE 5000

# Set the default command to execute    
# when creating a new container
# i.e. using 
RUN python main.py
RUN echo 'ending launching app'
