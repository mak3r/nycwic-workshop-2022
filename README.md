# Cloud Native Workshop - NYCWiC 2022

## Overview

The goal of this workshop is to get hands on with kubernetes and cloud native tools. I don't expect anyone to leave here as an expert in cloud native but rather to get a high level perspective of how development targeted toward cloud native platforms is achieved. We will use the Linux OS which may require stepping outside your comfort zone to use command line tools. We will use python v3.x as a programming language since it is fairly common and there is a very extensive public community to help you grow in this language. It is also used for a lot of Edge and IoT development - which is a passion of mine. We will use a container runtime. Docker is the most well known container runtime but there are others like containerd. In order to containerize applications, we will need some build tools and these are defined by the Open Container Initiative (OCI). Docker and containerd are OCI compliant however docker has been deprecated as the default in kubernetes due to it having an overlap in functionality with kubernetes itself. Kubernetes is our container orchestration platform. While it is possible to install kubernetes (k8s) from scratch, we will be using a lightweight distribution of kubernetes called k3s.  

## Steps

1. run a python app
1. run a python app in a container
1. run a python app with container orchestration
1. Connect k8s cluster to Rancher
1. View apps/content in Rancher
1. Discuss

## Extras

* Rancher Desktop
* k3s
* Rancher
