#! /bin/bash
cd kubernetes
kubectl delete -f ingress-deploy.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.47.0/deploy/static/provider/aws/deploy.yaml
cd ..
cd terraform
terraform destroy --auto-approve

