# Nginx based AWS S3 proxy with Authentication

Proxy to S3 with front htpasswd and SSL domain specific certificates.

### Usage

#### Clone this repo:

    git clone --recursive https://github.com/erikaulin/docker-s3proxy.git

#### Create a .htpasswd file with USERNAME and then fill in a password

    htpasswd -c .htpasswd USERNAME

#### SSL cert

    Place your domain .crt and .key file in config folder.
    Rename if needed to ex. example.com.crt and example.com.key

#### Build Local image:

    docker build -t s3proxy .

##### Start Container

    docker run --name s3proxy \
      -e DOMAIN="example.com" \
      -e S3PROXY_BUCKET_NAME="S3BUCKET" \
      -e S3PROXY_AWS_ACCESS_KEY="AWSKEY" \
      -e S3PROXY_AWS_SECRET_KEY="AWSSECRET" \
      -e S3PROXY_REGION="REGION" \
      -p 443:443 \
      -d s3proxy

#### Update nginx source:

    http://wiki.nginx.org/Install#Building_Nginx_From_Source
    tar -zxvf nginx-<VERSION>.tar docker-s3proxy/ngx_source

## Maintainers

* [Erik Aulin](mailto:erik@aulin.co)
