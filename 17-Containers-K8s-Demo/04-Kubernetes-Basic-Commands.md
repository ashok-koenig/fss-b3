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
- Test the web app at http://localhost using web browser.
- use ``` Ctrl + C ``` to stop port forward
### Detailed information about a pod
```
kubectl describe pod my-webapp-pod
```
### Remove a running pod
```
kubectl delete pod my-webapp-pod
```
## Working with Configuration file in K8s
### Deployment Configuration
```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: webapp
spec:
  replicas: 3
  selector:
    matchLabels:
      app: webapp
  template:
    metadata:
      labels:
        app: webapp
    spec:
      containers:
        - name: my-webapp
          image: ashokkoenig/my-webapp:latest
          ports:
            - containerPort: 80
```
### Service Configuration
```
apiVersion: v1
kind: Service
metadata:
  name: web-service
spec:
  selector:
    app: webapp
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  type: ClusterIP
```
### Apply configuration
```
cd 04-K8s-Config-my-webapp
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```
### Port forward the deployment to test the web app
```
kubectl port-forward deployment/webapp 80:80
```
- Test the web app at http://localhost using web browser.
- use ``` Ctrl + C ``` to stop port forward

### Manually scale the deployment 
```
kubectl scale deployment webapp --replicas 2
kubectl scale deployment webapp --replicas 4
```
### Test how Kubernetes maintain the desired state
```
kubectl get pods
kubectl delete pod <any-pod-name>
kubectl get pods
```
### Auto scaling based of CPU utilization (HPA)
```
kubectl autoscale deployment webapp --cpu-percent=80 --min=5 --max=10
kubectl get hpa
```