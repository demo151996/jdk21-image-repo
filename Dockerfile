FROM amazoncorretto:21.0.7

LABEL maintainer="jenita.marshel@gmail.com"
WORKDIR /app

# Install required tools
RUN yum update -y && \
    yum install -y openssl perl gawk && \
    yum clean all

# Copy and run the certificate import script
COPY import-rds-certs.sh .
RUN chmod +x import-rds-certs.sh && ./import-rds-certs.sh

CMD ["java","-version"]
