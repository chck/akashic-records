FROM gcr.io/cloud-datalab/datalab

RUN \
  apt-get update -y --fix-missing && \
  apt-get install -y \ 
  graphviz \
  mecab \
  libmecab-dev \
  mecab-ipadic-utf8 \
  xz-utils \
  file \
  make \
  sudo \
  gcc && \
  apt-get install -y --no-install-recommends apt-utils

RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git /tmp/neologd && \
  cd /tmp/neologd && \
  ./bin/install-mecab-ipadic-neologd -n -u -y && \
  rm -rf /tmp/neologd

RUN git clone --depth 1 https://github.com/neologd/mecab-unidic-neologd.git /tmp/neologd && \
  cd /tmp/neologd && \
  ./bin/install-mecab-unidic-neologd -n -u -y && \
  rm -rf /tmp/neologd

RUN \ 
  pip install --upgrade pip && \
  pip install \
  keras \
  gensim \
  cython \
  pydot==1.1.0 \
  graphviz \
  sqlalchemy \
  PyMySQL \
  natto-py \
  wordcloud

