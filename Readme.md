# Docker for [evo](https://github.com/MichaelGrupp/evo)

Tested on Ubuntu 20.04

## To build the docker image
```bash
git clone https://github.com/yuanjun-gao/evo-docker.git
cd evo-docker
git clone https://github.com/MichaelGrupp/evo.git
docker build -t yuanjung/evo:v1 .
```

## To get into the docker environment
```bash
bash docker_run.bash
```