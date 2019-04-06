#!/usr/bin/env fish

docker run -d -it --rm --name vue-cli -v (pwd)/app:/app -p 8080:8080 shinyay/vue-cli
#docker attach vue-cli
docker exec -it vue-cli ash
