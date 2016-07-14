FROM ubuntu

# Add the application resources URL
RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list

# Update the sources list
RUN apt-get update
# Copy the application folder inside the container
ADD /app /app

# Add python tools 
RUN apt-get install -y python python-dev python-distribute python-pip

#
RUN pip install -r /my_application/requirements.txt

# Set the default directory where CMD will execute
WORKDIR /app

# Set the default command to execute    
# when creating a new container
# i.e. using 
CMD python main.py
