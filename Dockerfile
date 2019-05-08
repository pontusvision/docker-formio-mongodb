FROM mongo:3.6 as builder

COPY mongodb.tar.gz /
RUN mongod --fork --syslog && sleep 5 && tar xvfz /mongodb.tar.gz && mongorestore ./mongodb && rm /mongodb.tar.gz

