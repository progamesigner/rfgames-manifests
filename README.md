# Kubernetes Manifests for RFGames

## Components
 * Ingress Controller (Nginx)
 * Monitor (Prometheus and Altermanager)
 * CertManager
 * Applications

## Apply
```
kubectl create secret generic ca --namespace=default --from-file=ca.crt=ca.pem
kubectl apply -k .
```
