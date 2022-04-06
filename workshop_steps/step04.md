## Kubernetes is a container orchestration platform
**We have created a container that runs a simple webserver using the python programming language. If that container failed for some reason, we would be responsible for restoring the runtime and the state of the application. Kubernetes is designed to help us manage containers at runtime so that we can focus on writing applications instead.**

Kubernetes provides us a declarative way to get availability, scalability and reliability from our applications. It is not as simple as just containerizing any application to achieve these outcomes, however containerization is a big piece of it. We are going to need a place to store our containers and for that, we use a registry. Some registries you may have heard of include GCR, ECS and dockerhub.

Create a registry for us to push our python web-server into
```ctr:developer
docker run -d -p 5000:5000 --restart=always --name registry registry:2
```

Allow docker to access the insecure registry
```ctr:developer
sudo systemctl stop docker
sudo /bin/bash -c "cat > /etc/docker/daemon.json" << "EOF"
{
    "insecure-registries" : [ "${vminfo:developer:public_ip}:5000" ]
}
EOF

sudo systemctl start docker
```

Tag our webserver getting it ready for the registry
```ctr:developer
docker tag py-web-server:3.7 ${vminfo:developer:public_ip}:5000/py-web-server:3.7
```

Push our webserver up to the registry
```ctr:developer
docker push ${vminfo:developer:public_ip}:5000/py-web-server:3.7
```

