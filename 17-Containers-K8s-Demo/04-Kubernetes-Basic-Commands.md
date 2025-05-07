# Kubernetes Basic Commands - kubectl
### Get the kuberneties version
```
kubectl version
```
### List all the nodes
```
kubectl get nodes
```
### List all the pods
```
kubectl get pods
```
### Create a pod from image
```
kubectl run my-webapp-pod --image=ashokkoenig/my-webapp
```
### Port forward the pod to test the web app
```
kubectl port-forward pod/my-webapp-pod 80:80
```
### Detailed information about a pod
```
kubectl describe pod my-webapp-pod
```
### Remove a running pod
```
kubectl delete pod my-webapp-pod
```