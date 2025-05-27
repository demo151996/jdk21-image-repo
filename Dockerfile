FROM eclipse-temurin:21-jdk
LABEL maintainer="jenita.marshel@gmail.com"
WORKDIR /app
RUN echo '#!/bin/bash\n\
echo "Running inside JDK 21 container"\n\
java -version' > /app/do-something.sh && chmod +x /app/do-something.sh
ENTRYPOINT ["/app/do-something.sh"]
