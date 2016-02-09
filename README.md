# Nginx based AWS S3 proxy with Authentication

Proxy to S3 with htpasswd file in front
### Usage

#### Clone this repo:

    git clone --recursive https://github.com/erikaulin/docker-s3proxy.git

#### Create a .htpasswd file with USERNAME and then fill in a password

    htpasswd -c .htpasswd USERNAME

#### Build Local image:

    docker build -t s3proxy .

##### Start Container

    docker run --name s3proxy \
      -e S3PROXY_BUCKET_NAME="S3BUCKET" \
      -e S3PROXY_AWS_ACCESS_KEY="AWSKEY" \
      -e S3PROXY_AWS_SECRET_KEY="AWSSECRET" \
      -e S3PROXY_REGION="REGION" \
      -p 80:80 \
      -d s3proxy

#### Update nginx source:

    http://wiki.nginx.org/Install#Building_Nginx_From_Source
    tar -zxvf nginx-<VERSION>.tar docker-s3proxy/ngx_source

## Maintainers

* [Erik Aulin](mailto:erik@aulin.co)
