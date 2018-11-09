# thejordanclark/wpphp

[![pipeline status](https://git.jordanclark.us/devops/wpphp-docker/badges/master/pipeline.svg)](https://git.jordanclark.us/devops/wpphp-docker/commits/master)

## Introduction
A docker image based the official PHP docker image with WordPress dependencies added.

### Tags

| Tag | Description |
|---|---|
| latest | The most current build with Apache and PHP 7.2.x.  Images based on latest may change often an possibly could break.  Test your images |
| 7.2-apache | PHP 7.2 |
| 5.6-apache | PHP 5.6 |

### Issues

I'm sure there are some but currently I'm unaware of current issues.  If you find an issue please let me know on [GitHub](https://github.com/thejordanclark/wpphp-docker/issues)

### Prerequisites

A working docker daemon would be helpful to utilize this image.

## How to use this image

This image is meant to be used as a base to build custom docker images from.  It's value is that it takes the base Debian linux image and adds the s6 overlay.

### Usage

###### Running a container with web root mapped to /data/wordpress  

~~~
docker run -d -v /data/wordpress:/var/www/html -p 80:80 thejordanclark/wpphp:latest bash
~~~

This will start a container serving date from the local directory /data/wordpress and publish it on port 80.

###### Dockerfile that is based of of this image.

~~~
FROM thejordanclark/wpphp:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y cowsay && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
~~~

## Configuration

### Configuration Parameters
| Environment | Description |
| --- | --- |

## Maintenance

### Shell Access

This image includes the bash shell and when running in detached mode can be connected to with:

~~~
docker exec -ti <container> bash
~~~


## References

Maintainer: [https://jordanclark.us](https://jordanclark.us)

Maintainer's git repo: [https://git.jordanclark.us/devops/wpphp-docker](https://git.jordanclark.us/devops/wpphp-docker)

Github Issues: [https://github.com/thejordanclark/wpphp-docker/issues](https://github.com/thejordanclark/wpphp-docker/issues)
