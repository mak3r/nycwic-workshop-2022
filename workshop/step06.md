## Scale up
**We are at the end of the workshop but lets have one more command to see how easy it is to scale up your microservices in Kubernetes.**


Look at your current number of pods for the web-server
```ctr:developer
kubectl get pods
```

Now scale up the number of pods in your deployment
```ctr:developer
kubectl scale deployment ws --replicas=3
```

Now you should have 3 pods
```ctr:developer
kubectl get pods
```

### Learn More

**Rancher Desktop - An easy to install developer focused set of tools which include the k3s Kubernetes distribution and tooling to build, run, push and pull all your containers just like docker. Runs on Linux, Mac and Windows systems**
```
https://rancherdesktop.io/
```

**K3s**
```
https://k3s.io/
https://github.com/k3s-io/k3s
```

**Kubernetes**
```
https://kubernetes.io/docs/tutorials/kubernetes-basics/
```