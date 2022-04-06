## Kubernetes is a container orchestration platform
**We are going to use k3s as our Kubernetes(k8s) distribution. This distribution enables us to quickly install a single node k8s cluster. Single node clusters are used for lots of reasons however most kubernetes clusters are composed of more nodes in order to achieve high availability. For our purposes developing today, a single node is just fine.**


Install and run k3s
```ctr:developer
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--write-kubeconfig-mode 0644 --docker" sh -
```

You can access kubernetes using the `kubectl` command which was installed with k3s. Here is a command to list all the nodes in a cluster. We have just one node.
```ctr:developer
kubectl get node
```

This command shows you what other commands are available. We'll use a few more of these shortly.
```ctr:developer
kubectl help
```

### Now let's run our web-server from the registry on our K3s cluster.

Create a Kubernetes manifest declaring how to run our web server.
```ctr:developer
kubectl create deployment ws --image ${vminfo:developer:public_ip}:5000/py-web-server:3.7 
```

Now we'll create a k8s service to expose our webserver as a public facing url
```ctr:developer
kubectl expose deployment ws --name ws-svc --type=NodePort --port=80 
```
That created our service on a randomly selected port in the range 30000-32767. 


Lets find the port that was selected so we can visit our web-server as it runs in kubernetes. Run this command and look at the output to find the url:port you should visit to see your app.
```ctr:developer
export SVC_NP=$(kubectl get svc ws-svc -o jsonpath='{.spec.ports[0].nodePort}')
echo 
echo "http://${vminfo:developer:public_ip}:$SVC_NP"
```

[NEXT](./step06.md)