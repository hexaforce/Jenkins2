# jenkins-2.0 on java-1.8-openjdk
# docker run -it -p 8080:8080 hexaforce/jenkins /bin/ash

FROM alpine:latest

# Java intall
RUN apk --no-cache add openjdk8 ttf-dejavu

# Jenkins intall
RUN mkdir /opt
ADD jenkins.war /opt

EXPOSE 8080 

CMD ["java", "-jar", "/opt/jenkins.war"]
