FROM amazoncorretto:21.0.7

LABEL maintainer="jenita.marshel@gmail.com"
WORKDIR /app
RUN echo '#!/bin/bash\n\
echo "Running inside JDK 21 container"\n\
java -version' > /app/script.sh && chmod +x /app/script.sh
ENTRYPOINT ["/app/script.sh"]
