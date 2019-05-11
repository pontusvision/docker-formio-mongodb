FROM mongo:3.6 as builder

COPY mongodb.tar.gz /
RUN tar xvfz /mongodb.tar.gz 

#CMD mongod 

FROM mongo:3.6 

COPY --from=builder /mongodb /mongodb

#RUN mongod --fork --syslog && \
#    sleep 5 && \
#    mongorestore /mongodb  


