# Cloud Native Workshop - NYCWiC 2022

## Overview

The goal of this workshop is to get hands on with kubernetes and cloud native tools. I don't expect anyone to leave here as an expert in cloud native but rather to get a high level perspective of how development targeted toward cloud native platforms is achieved. 

* We will use the Linux OS which may require stepping outside your comfort zone to use command line tools. 
* We will use python v3.x as a programming language since it is fairly common and there is a very extensive public community to help you grow in this language. It is also used for a lot of Edge and IoT development - which is a passion of mine. 
* We will use the Docker container runtime. Docker is the most well known container runtime but there are others like containerd. 
* In order to containerize applications, we will need some build tools and these are defined by the Open Container Initiative (OCI.md). We will use docker for this as well.
* Kubernetes is our container orchestration platform. While it is possible to install kubernetes (k8s.md) from scratch, we will be using a lightweight distribution of kubernetes called k3s.  

## Steps

1. [Linux Basics](./workshop/step01.md)
1. [Run an App in a Container](./workshop/step02.md)
1. [Expose an App in a Container](./workshop/step03.md)
1. [Container Orchestration](./workshop/step04.md)
1. [Setup K3s our Kubernetes Distribution](./workshop/step05.md)
1. [Scaling Microservices and Next Steps](./workshop/step06.md)


## Extras

* [Rancher Desktop](https://rancherdesktop.io/.md)
* [k3s](https://github.com/k3s-io/k3s.md)
* [Rancher](https://github.com/rancher/rancher.md)
