# Author:
# Yuanjun Gao <yuanjun2602@gmail.com>
# at Carnegie Mellon University

# DATA_PATH="/media/yuanjun"

xhost +local:docker

# docker run -itd \
#     -v `pwd`/evo:/root/evo \
#     -v "$DATA_PATH:/media/drive" \
#     -v /tmp/.X11-unix:/tmp/.X11-unix \
#     -e DISPLAY=$DISPLAY  \
#     --rm \
#     --name evo yuanjung/evo:v1 bash
docker run -itd \
    -v `pwd`/evo:/root/evo \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY  \
    --rm \
    --name evo yuanjung/evo:v1 bash

docker exec -it evo bash

docker stop evo

# xhost -local:docker
