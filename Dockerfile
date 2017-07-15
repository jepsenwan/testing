
##################################################################
# Dockerfile to build unittest container for hit/getHit function #
##################################################################

# Base image is python
FROM daocloud.io/library/python:2.7.7

# Author: Dr. Peter
MAINTAINER Dr. Peter <peterindia@gmail.com>

# Install redis driver for python and the redis mock
RUN pip install redis && pip install mockredispy && pip install mock

# Copy the test and source to the Docker image
ADD src/ /src/

# Change the working directory to /src/
WORKDIR /src/

# Make unittest as the default execution...
ENTRYPOINT python test_hitcount.py
