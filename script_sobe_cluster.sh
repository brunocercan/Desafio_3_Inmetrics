#! /bin/bash
cd terraform
terraform apply --auto-approve
aws eks update-kubeconfig --name eks_cluster_brunocg
cd ..
cd kubernetes
kubectl apply -f ingress-deploy.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.47.0/deploy/static/provider/aws/deploy.yaml
kubectl get svc --all-namespaces