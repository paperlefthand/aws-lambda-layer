# aws-lambda-layer

Python 3.10 AWS Lambda Layer with pip modules

```bash
docker build . -t bundle-pip-modules-for-aws-lambda-layers:python3.10 
docker run --rm -it -v .:/dist bundle-pip-modules-for-aws-lambda-layers:python3.10

```

aws lambda publish-layer-version --layer-name linesdk-layer \
    --description "My layer" \
    --zip-file fileb://layer.zip \
    --compatible-runtimes python3.11 \
    --compatible-architectures "x86_64"
