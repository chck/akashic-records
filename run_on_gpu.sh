nvidia-docker run \
  --rm \
  -p 8888:8888 \
  -v ${PWD}/datalab/notebooks:/src \
  keras-with-gpu

