FROM openjdk:10.0.2-jre-slim
RUN aws cp s3://microserviceartifact/order/${JOB_NAME}_${BUILD_NUMBER}.jar .
CMD /usr/bin/java -Xmx400m -Xms400m -jar microservice-kubernetes-demo-order-0.0.1-SNAPSHOT.jar
EXPOSE 8080
