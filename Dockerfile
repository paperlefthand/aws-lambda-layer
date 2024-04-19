FROM amazonlinux:2

ARG PYTHON_VERSION=3.11.6

RUN yum update -y -q \
  && yum install -y -q openssl11 openssl11-devel tar make gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel tk-devel libffi-devel xz-devel git zip \
  && git clone https://github.com/pyenv/pyenv.git ~/.pyenv \
  && ~/.pyenv/plugins/python-build/bin/python-build ${PYTHON_VERSION} ~/python3 \
  && ln -sf ~/python3/bin/python3 /usr/local/bin/python3

ADD entrypoint.sh /

RUN mkdir /python \
  && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
