#Start From Base Docker Image
FROM openjdk:8-jdk-alpine
VOLUME /tmp
#Add application jar to the container
COPY target/spring-k8s-svc.jar spring-k8s-svc.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","spring-k8s-svc.jar"]