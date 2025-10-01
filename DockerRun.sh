docker pull rapidsai/notebooks:25.12a-cuda12.0-py3.12

docker run --gpus all --pull always --rm -it \
    --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 \
    -p 8888:8888 -p 8787:8787 -p 8786:8786 \
    rapidsai/notebooks:25.12a-cuda12.0-py3.12